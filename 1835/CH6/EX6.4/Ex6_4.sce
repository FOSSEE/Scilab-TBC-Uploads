//CHAPTER 6 ILLUSRTATION 4 PAGE NO 177
//TITLE:Turning Moment Diagram and Flywheel
//figure 6.4
clc
clear
//===================
pi=3.141
N=480//             speed of the engine in rpm
k=.6//            radius of gyration in m
Cs=.03//           coefficient of fluctuaion of speed 
Ts=6000//          turning moment scale in Nm per one cm
C=30//             crank angle scale in degrees per cm
a=[0.5,-1.22,.9,-1.38,.83,-.7,1.07]//      areas between the output torque and mean resistance line in sq.cm
//======================
w=2*pi*N/60//            angular speed in rad/s
A=Ts*C*pi/180//            1 cm^2 of turning moment diagram in Nm
E1=a(1)//                max energy at B refer figure
E2=a(1)+a(2)+a(3)+a(4)
E=(E1-E2)*A//            fluctuation of energy in Nm
m=E/(k^2*w^2*Cs)//        mass of the flywheel in kg
printf('Mass of the flywheel= %.3f kg',m)
