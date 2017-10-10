//Example 5_11_u1
clc();
clear;
//To determine the unitcell and its dimensions
//Experimental data
//We have relation sin^(theta)=(lamda/2*a)^2 and (h^2+k^2+l^2)=j*(lamda/2*a)^2
theta21=12.1        //units in degrees
theta22=17.1        //units in degrees
theta23=21        //units in degrees
theta24=24.3        //units in degrees
theta25=27.2        //units in degrees
theta26=29.9        //units in degrees
theta28=34.7        //units in degrees
theta29=36.9        //units in degrees
theta210=38.9        //units in degrees
theta211=40.9        //units in degrees
theta212=42.8        //units in degrees
theta1=theta21/2      //units in degrees
theta2=theta22/2      //units in degrees
theta3=theta23/2      //units in degrees
theta4=theta24/2      //units in degrees
theta5=theta25/2      //units in degrees
theta6=theta26/2      //units in degrees
theta8=theta28/2      //units in degrees
theta9=theta29/2      //units in degrees
theta10=theta210/2      //units in degrees
theta11=theta211/2      //units in degrees
theta12=theta212/2      //units in degrees
//sin^2(theta) values
sin1=(sin(theta1*%pi/180))^2
sin2=(sin(theta2*%pi/180))^2
sin3=(sin(theta3*%pi/180))^2
sin4=(sin(theta4*%pi/180))^2
sin5=(sin(theta5*%pi/180))^2
sin6=(sin(theta6*%pi/180))^2
sin8=(sin(theta8*%pi/180))^2
sin9=(sin(theta9*%pi/180))^2
sin10=(sin(theta10*%pi/180))^2
sin11=(sin(theta11*%pi/180))^2
sin12=(sin(theta12*%pi/180))^2
//sin^2(theta)/0.0111 value
temp1=sin1/sin1
temp2=sin2/sin1
temp3=sin3/sin1
temp4=sin4/sin1
temp5=sin5/sin1
temp6=sin6/sin1
temp8=sin8/sin1
temp9=sin9/sin1
temp10=sin10/sin1
temp11=sin11/sin1
temp12=sin12/sin1
//(h,k,l) values are determined such that the sum h^2+k^2+l^2=temp value in that manner hence we have to select the (h,k,l) values
//(h,k,l) values
hkl1=100       //As h^2+k^2+l^2=1
hkl2=110       //As h^2+k^2+l^2=2
hkl3=111       //As h^2+k^2+l^2=3
hkl4=200       //As h^2+k^2+l^2=4
hkl5=210       //As h^2+k^2+l^2=5
hkl6=211       //As h^2+k^2+l^2=6
hkl8=220       //As h^2+k^2+l^2=8
hkl9=300       //As h^2+k^2+l^2=9
hkl10=310       //As h^2+k^2+l^2=10
hkl11=311       //As h^2+k^2+l^2=11
hkl12=222       //As h^2+k^2+l^2=12
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %d\n",theta21,hkl1,temp1 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta22,hkl2,temp2 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta23,hkl3,temp3 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta24,hkl4,temp4 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is%.1f\n",theta25,hkl5,temp5 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta26,hkl6,temp6 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta28,hkl8,temp8 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta29,hkl9,temp9 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta210,hkl10,temp10 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta211,hkl11,temp11 )
printf("unit cell Dimensions when 2*theta=%.1f is (%d) where sin^2(theta)/0.0111 is %.1f\n",theta212,hkl12,temp12 )
lamda=71         //units in pm
a=lamda/(2*sqrt(sin1))    //units in pm
printf("The unitcell and its dimensions are %dpm",a)
