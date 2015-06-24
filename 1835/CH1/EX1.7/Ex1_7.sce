//CHAPTER 1 ILLUSRTATION 7 PAGE NO 21
//TITLE:Basic kinematics
//Figure 1.24,1.25
clc
clear
pi=3.141
Noa=600//      speed of the crank in rpm
OA=2.8//       length of link OA in cm
AB=4.4//       length of link AB in cm
BC=4.9//       length of link BC in cm
BD=4.6//       length of link BD in cm
//=================
wOA=2*pi*Noa/60//        angular velocity of crank in rad/s
Vao=wOA*OA//             The linear velocity of point A with respect to oin m/s
s=50//                   scale of velocity diagram in cm
od=2.95//              by measurement in cm from figure
Vd=od*s/100//             linear velocity slider in m/s
bd=3.2//              by measurement in cm from figure
Vbd=bd*s
wBD=Vbd/BD//     angular velocity of link BD
printf('linear velocity slider D= %.3f m/s\n angular velocity of link BD= %.1f rad/s',Vd,wBD)



