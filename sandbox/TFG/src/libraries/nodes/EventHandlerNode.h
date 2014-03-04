#ifndef EVENTHANDLERNODE_H
#define EVENTHANDLERNODE_H
#include "../libraries/eventhandler.h"
#include <ros/ros.h>
#include <pi_tracker/Skeleton.h>
#include <TFG/EventHandler.h>
#include <pcl/point_types.h>


class EventHandlerNode
{
public:
    EventHandlerNode();
    ros::NodeHandle nh;
    ros::Publisher event_pub;

    ros::Subscriber skeleton_sub;      /**Subscriber used to obtain the pi_tracker::Skeleton messages*/


private:
    EventHandler eventHandler;
    /*!
        * \brief Callback method for the subscriber topic.
        *
        *\param pi_tracker::SkeletonConstPtr message received through the topic
        *
        * Compares the position of the hands to determine which one is being used in the program (the other one will be located at the body's side).
        * Also, decides which mode (learner or recognizer) is active depending on the hand's position. If it is extended towards the RGB-D sensor,
        *the learner mode will be activated. Otherwise, the recognizer mode will be activated.
        */
    void event_cb(const pi_tracker::SkeletonConstPtr &);

};

#endif // EVENTHANDLERNODE_H
