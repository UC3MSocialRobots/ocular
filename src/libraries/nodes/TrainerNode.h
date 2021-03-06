//#ifndef TRAINERNODE_H
//#define TRAINERNODE_H

//#include "../libraries/algorithm2D.h"
//#include "../libraries/algorithm3D.h"

//#include <ros/ros.h>
//#include <ocular/EventHandler.h>

//class TrainerNode
//{
//public:
//    TrainerNode();

//private:

//    ros::NodeHandle nh;
//    ros::Subscriber descriptors2D;
//    ros::Subscriber descriptors3D;

//    ros::Subscriber event_sub;


//    void train2D_cb(const ocular::HandImageConstPtr & );

//    void train3D_cb();

//    void setEvent(const ocular::EventHandlerConstPtr & );


//    Algorithm2D alg2D;


//    int number_views; /** Stores the total number of views to be extracted of each object */
//    int number_views_it; /** Iterator that stores the current view number of the object */
//    bool learn; /** Boolean that is true when the received event is learn and false otherwise*/

//};

//#endif // TRAINERNODE_H
