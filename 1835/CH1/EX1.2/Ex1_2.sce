//CHAPTER 1 ILLUSRTATION 2 PAGE NO 16
//TITLE:Basic kinematics
//Figure 1.15
clc
clear
OA=300//               distance between the fixed centres in mm
OB=150//                 length of driving crank in mm
//================================
OAB=asind(OB/OA)//              inclination of slotted bar with vertical in degrees
beeta=(90-OAB)*2//               angle through which crank turns inreturn stroke in degrees
A=(360-beeta)/beeta//             ratio of time of cutting stroke to the time of return stroke 
printf('Ratio of time taken on the cutting to the return stroke= %.0f',A)
