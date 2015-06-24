//CHAPTER 6 ILLUSRTATION 5 PAGE NO 178
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
//==============
pi=3.141
P=500*10^3//        power of the motor in N
k=.6//            radius of gyration in m
Cs=.03//          coefficient of fluctuation of spped 
OA=750//           REFER FIGURE
OF=6*pi//          REFER FIGURE
AG=pi// REFER FIGURE
BG=3000-750// REFER FIGURE
GH=2*pi// REFER FIGURE
CH=3000-750// REFER FIGURE
HD=pi// REFER FIGURE
LM=2*pi// REFER FIGURE
T=OA*OF+1/2*AG*BG+BG*GH+1/2*CH*HD//    Torque required for one complete cycle in Nm
Tmean=T/(6*pi)//                 mean torque in Nm
w=P/Tmean//                    angular velocity required in rad/s
BL=3000-1875// refer figure
KL=BL*AG/BG//   From similar trangles
CM=3000-1875// refer figure
MN=CM*HD/CH//from similar triangles
E=1/2*KL*BL+BL*LM+1/2*CM*MN//         Maximum fluctuaion of energy in Nm
m=E*100/(k^2*w^2*Cs)//   mass of flywheel in kg
printf('Mass of the flywheel= %.3f kg',m)
