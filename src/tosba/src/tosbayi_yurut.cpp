#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include "tosba/robot_durumu.h"

void pozisyonCallback(const turtlesim::PoseConstPtr& mesaj);

int main (int argc, char **argv)
{
    //const double dogrusal_hiz = 0.5;
    //const double acisal_hiz = 0.2;

    double dogrusal_hiz = 0.5;
    double acisal_hiz = 0.2;

    std::string robot_adi = std::string{argv[1]};
    std::string hiz_dogrusal = std::string{argv[1]};
    std::string hiz_acisal = std::string{argv[1]};
    dogrusal_hiz = std::stod(hiz_dogrusal);
    acisal_hiz = std::stod(hiz_acisal);

    ros::init (argc,argv, "tosbayi_yurut");

    ros::NodeHandle nh;

    ros::Publisher pub_yurut;
    // pub_yurut = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",10);
    // Alttaki kodda turtle1 robat adi launch dosyası içerisinden argüman olarak geliyor.
    pub_yurut = nh.advertise<geometry_msgs::Twist>(robot_adi +"/cmd_vel",10);
    ros::Subscriber sub_tosba;
    //sub_tosba : nh.subsribe("turtle1/Pose",10,pozisyonCallback);
    sub_tosba : nh.subscribe(robot_adi + "/pose",10,pozisyonCallback);

    geometry_msgs::Twist hiz_mesaji;
    hiz_mesaji.linear.x = dogrusal_hiz;
    hiz_mesaji.angular.z = acisal_hiz;

    ros::Rate rate(10);
    ROS_INFO("Tosba Yürümeye Basladi");
    while (ros::ok){
        pub_yurut.publish(hiz_mesaji);
        ros::spinOnce();
        rate.sleep();
    }

}
void pozisyonCallback(const turtlesim::PoseConstPtr& mesaj){
    ROS_INFO("x:%.2f, y:%.2f",mesaj->x,mesaj->y);
}