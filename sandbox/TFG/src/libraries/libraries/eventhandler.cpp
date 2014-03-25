#include "eventhandler.h"

EventHandler::EventHandler()
{
    this->last_event="recognize";
}

TFG::EventHandler EventHandler::select_event_hand(const pi_tracker::SkeletonConstPtr & msg)
{
    TFG::EventHandler event;

    event.last_event=this->last_event;

    pcl::PointXYZ left_hand;
    left_hand.x=msg->position[5].x;
    left_hand.y=msg->position[5].y;
    left_hand.z=msg->position[5].z;


    pcl::PointXYZ right_hand;
    right_hand.x=msg->position[8].x;
    right_hand.y=msg->position[8].y;
    right_hand.z=msg->position[8].z;

    //Determine which hand is being used
    if (right_hand.y < left_hand.y)
    {
        event.hand="left_hand";
    }
    else if (left_hand.y < right_hand.y)
    {
        event.hand="right_hand";

    }


    //Determine the mode to be activated
    pcl::PointXYZ threshold_mode;
    threshold_mode.x=0.1;
    threshold_mode.y=0.1;
    threshold_mode.z=0.3;

    double diff=left_hand.z - right_hand.z;
    if (diff <0)
        diff *=-1;

    if (diff<threshold_mode.z )
    {
        event.event="recognize";
    }
    else if (diff>threshold_mode.z)
    {
        event.event="learn";
    }



//    ROS_ERROR("left hand: %f  right hand: %f", msg->position[5].z, msg->position[8].z);
//    ROS_ERROR("right-left: %f ",right_hand.z - left_hand.z);


//    if (event.hand=="right_hand")
//    {
//        if( abs(right_hand.z- right_hip.z) > threshold_mode.z && abs(right_hand.x -right_hip.x)<threshold_mode.x )
//            event.event="learn";
//        else
//            event.event="recognize";

//    }
//    else if (event.hand=="left_hand")
//    {
//        if( abs(left_hand.z- left_hip.z) > threshold_mode.z && abs(left_hand.x -left_hip.x)<threshold_mode.x )
//            event.event="learn";
//        else
//            event.event="recognize";
//    }

    this->last_event=event.event;
    return event;
}
