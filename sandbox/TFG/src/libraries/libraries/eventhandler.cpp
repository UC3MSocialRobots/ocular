#include "eventhandler.h"

EventHandler::EventHandler()
{
    //
}
TFG::EventHandler EventHandler::select_event_hand(const pi_tracker::SkeletonConstPtr & msg)
{
    TFG::EventHandler event;

    pcl::PointXYZ threshold_hand;
    threshold_hand.x=0.1;
    threshold_hand.y=0.1;
    threshold_hand.z=0.05;

    pcl::PointXYZ left_hand;
    left_hand.x=msg->position[5].x;
    left_hand.y=msg->position[5].y;
    left_hand.z=msg->position[5].z;

    pcl::PointXYZ left_hip;
    left_hip.x=msg->position[9].x;
    left_hip.y=msg->position[9].y;
    left_hip.z=msg->position[9].z;

    pcl::PointXYZ right_hand;
    left_hand.x=msg->position[8].x;
    left_hand.y=msg->position[8].y;
    left_hand.z=msg->position[8].z;

    pcl::PointXYZ right_hip;
    left_hip.x=msg->position[12].x;
    left_hip.y=msg->position[12].y;
    left_hip.z=msg->position[12].z;

    //Determine which hand is being used
    if( abs(left_hand.z- left_hip.z) > threshold_hand.z && abs(right_hand.z-right_hip.z)<threshold_hand.z)
    {
        if (abs(left_hand.x- left_hip.x) > threshold_hand.x)
            event.hand="left";

    }
    else if ( abs(right_hand.z-right_hip.z)>threshold_hand.z && abs(left_hand.z- left_hip.z) < threshold_hand.z  )
    {
        if (abs(right_hand.x- right_hip.x) > threshold_hand.x)
            event.hand="right";
    }

    //Determine the mode to be activated
    pcl::PointXYZ threshold_mode;
    threshold_mode.x=0.1;
    threshold_mode.y=0.1;
    threshold_mode.z=0.3;

    if (event.hand=="right")
    {
        if( abs(right_hand.z- right_hip.z) > threshold_mode.z && abs(right_hand.x -right_hip.x)<threshold_mode.x )
            event.event="learn";
        else
            event.event="recognize";

    }
    else if (event.hand=="left")
    {
        if( abs(left_hand.z- left_hip.z) > threshold_mode.z && abs(left_hand.x -left_hip.x)<threshold_mode.x )
            event.event="learn";
        else
            event.event="recognize";
    }

    return event;
}