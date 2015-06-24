//CHAPTER 1 ILLUSRTATION 8 PAGE NO 22
//TITLE:Basic kinematics
//Figure 1.26,1.27
clc
clear
pi=3.141
Noa=60//        speed of crank in rpm
OA=30//     length of link OA in cm
AB=100//       length of link AB in cm
CD=80//         length of link CD in cm
//AC=CB
//================
wOA=2*pi*Noa/60//     angular velocity of crank in rad/s
Vao=wOA*OA/100//      linear velocity of point A with respect to O
s=50//          scale for velocity diagram 1 cm= 50 cm/s
ob=3.4//        by measurement in cm from figure 1.27
od=.9//         by measurement in cm from figure 1.27
Vcd=160//       by measurement in cm/s from figure 1.27
wCD=Vcd/CD//    angular velocity of link in rad/s
printf('Angular velocity of link CD= %d rad/s',wCD)
