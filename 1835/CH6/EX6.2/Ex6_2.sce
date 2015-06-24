//CHAPTER 6 ILLUSRTATION 2 PAGE NO 176
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
N1=225//              maximum speed of flywheel in rpm
k=.5//                radius of gyration of flywheel in m
n=720//               no of holes punched per hour
E1=15000//            energy required by flywheel in Nm
N2=200//              mimimum speedof flywheel in rpm
t=2//                 time taking for punching a hole
//==========================
P=E1*n/3600//              power required by motor per sec in watts
E2=P*t//                   energy supplied by motor to punch a hole in N-m
E=E1-E2//                  maximum fluctuation of energy in N-m
N=(N1+N2)/2//              mean speed of the flywheel in rpm
m=E/(pi^2/900*k^2*N*(N1-N2))
printf('Power of the motor= %.3f watts\n Mass of the flywheel required= %.3f kg',P,m)
