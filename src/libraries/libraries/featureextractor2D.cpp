#include "featureextractor2D.h"

FeatureExtractor2D::FeatureExtractor2D()
{}

ocular::HandImage FeatureExtractor2D::extract_features(const ocular::HandImageConstPtr & msg)
{
    ocular::HandImage result;

    cv_bridge::CvImagePtr cv_ptr;
    cv_bridge::CvImagePtr final_ptr;

    for (unsigned int i=0; i<msg->image.size();i++)
    {
        try
        {
            cv_ptr = cv_bridge::toCvCopy(msg->image[i], sensor_msgs::image_encodings::BGR8);
        }
        catch (cv_bridge::Exception& e)
        {
            ROS_ERROR("cv_bridge exception: %s", e.what());
        }


        cv::Mat  gimage;
        cvtColor(cv_ptr->image, gimage, CV_BGR2GRAY);

        cv::Mat mask;

        std::vector <cv::KeyPoint> keypoints;
        cv::Mat descriptors;
        cv::ORB orb;



        orb(gimage, mask,  keypoints, descriptors);

        cv_bridge::CvImage cv_ptr_out;
        //        std::cerr<<cv_ptr_out.encoding<<descriptors.type()<<std::endl;


        cv_ptr_out.image=descriptors.clone();
//        std::cerr<< cv_ptr_out.image.type()<<std::endl;

        cv_ptr_out.encoding=sensor_msgs::image_encodings::MONO8;
//        cv_ptr_out.encoding=sensor_msgs::image_encodings::RGB8;



//        std::cerr<<cv_ptr_out.encoding<<descriptors.type()<<std::endl;

        //fill the result of the feature extraction:
        result.image.push_back( *cv_ptr_out.toImageMsg());

        result.name.push_back(msg->name[i]);


        //            Draw circles in the keypoints
        for (unsigned int i=0; i<keypoints.size(); i++)
        {
            circle(cv_ptr->image, keypoints[i].pt, keypoints[i].size, cv::Scalar(0,0,255), 1);
        }

        this->image_with_keypoints=*cv_ptr->toImageMsg();
    }

    return result;
}

sensor_msgs::Image FeatureExtractor2D:: get_image_with_keypoints()
{
    return this->image_with_keypoints;
}

