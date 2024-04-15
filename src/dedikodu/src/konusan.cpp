#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Cok_Konusan");
    ros::NodeHandle nh;
    ros::Publisher pub_konusan;
    pub_konusan = nh.advertise<std_msgs::String>("konusan_teyze", 1000);
    ros::Rate loop_rate(10);

    int sayi = 0;
    while (ros::ok())
    {
        std::stringstream ss;
        ss << "gec geldiğiniz saniye " << sayi;
        std_msgs::String msg;
        msg.data = ss.str();
        ROS_INFO("%s", msg.data.c_str());
        sayi++;
        pub_konusan.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
