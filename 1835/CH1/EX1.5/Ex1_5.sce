//CHAPTER 1 ILLUSRTATION 5 PAGE NO 19
//TITLE:Basic kinematics
//Figure 1.20,1.21
clc
clear
pi=3.141
N=120//      speed of crank in rpm
OA=10//      length of crank in cm
BP=48//      from figure 1.20 in cm
BA=40//      from figure 1.20 in cm
//==============
w=2*pi*N/60//       angular velocity of the crank OA in rad/s
Vao=w*OA//          velocity of ao in cm/s
ba=4.5//            by measurement from 1.21 in cm
Bp=BP*ba/BA
op=6.8//           by measurement in cm from figure 1.21
s=20//              scale of velocity diagram 1cm=20cm/s
Vp=op*s//           linear velocity of P in m/s
ob=5.1//            by measurement in cm from figure 1.21
Vb=ob*s//           linear velocity of slider B
printf('Linear velocity of slider B= %.2f cm/s\n Linear velocity of point P= %.2f cm/s',Vb,Vp)
