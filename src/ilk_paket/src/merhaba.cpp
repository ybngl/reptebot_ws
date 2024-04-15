#include "ros/ros.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv , "Merhaba_ROS");
    ros::NodeHandle nh;
    ros::Rate loop_rate(10);

    int sayi = 0;
    while (ros::ok())
    {
        ROS_INFO_STREAM("Merhaba Mekatronikciler" << sayi);
        loop_rate.sleep();
        sayi++;
    }

    return 0;
}
