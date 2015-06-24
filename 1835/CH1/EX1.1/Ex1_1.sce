//CHAPTER 1 ILLUSRTATION 1 PAGE NO 15
//TITLE:Basic kinematics
//Figure 1.14
clc
clear
pi=3.141
AO=200//                 distance between fixed centres in mm
OB1=100//                length of driving crank in mm
AP=400//                 length of slotter bar in mm
//====================================
OAB1=asind(OB1/AO)//              inclination of slotted bar with vertical in degrees
beeta=(90-OAB1)*2//               angle through which crank turns inreturn stroke in degrees
A=(360-beeta)/beeta//             ratio of time of cutting stroke to the time of return stroke 
L=2*AP*sind(90-(beeta)/2)//       length of the stroke in mm
printf('Inclination of slotted bar with vertical= %.3f degrees\n Length of the stroke= %.3f mm',OAB1,L)

