//------------------------------------------------------------------------------
//-- Matcher class
//------------------------------------------------------------------------------
//--
//--  Matches the new objects with the templates previously extracted in order to identify the object.
//--
//------------------------------------------------------------------------------
//--
//-- This file belongs to the Bachelor's Thesis "In-hand object detection and tracking using 2D and 3D information"
//-- (https://github.com/irenesanznieto/TFG)
//--
//------------------------------------------------------------------------------
//-- Author: Irene Sanz Nieto
//--
//-- Released under the MIT license (more info on LICENSE.md file)
//------------------------------------------------------------------------------

#ifndef MATCHER_H
#define MATCHER_H

#include "dataparser.h"
#include <TFG/HandImage.h>
#include <algorithm>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

#include <pcl/point_types.h>
#include <pcl/filters/passthrough.h>
#include <pcl/ros/conversions.h>

#include <pcl/point_cloud.h>
#include <pcl/filters/statistical_outlier_removal.h>


#include <sensor_msgs/PointCloud2.h>

//* Matcher
/**
* Matches the new objects with the templates previously extracted in order to identify the object.
* \author Irene Sanz Nieto ( https://github.com/irenesanznieto )
* \date Feb 25th, 2014
*
*/
class Matcher
{
public:

    /*!
    * \brief Public constructor
    */
    Matcher();
    int match2D(const TFG::HandImageConstPtr & msg);
    void match3D(const sensor_msgs::PointCloud2ConstPtr &);

    void set_start_training(bool training);     /** Sets the value of the private boolean train*/


private:

    DataParser dataparser;  /**DataParser object that will store and load the algorithms and templates information*/
    std::vector<cv::FlannBasedMatcher> algorithms2D;

    int flann_comparison (cv::Mat &, float);

    bool training; /**Boolean that is set to true whenever the training mode is activated*/


};
#endif //MATCHER_H
