//CHAPTER 6 ILLUSRTATION 8 PAGE NO 182
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
b=8//    width of the strip in cm
t=2//    thickness of the strip in cm
w=1.2*10^3//          work required per square cm cut
N1=200//                maximum speed of the flywheel in rpm
k=.80//                 radius of gyration in m
N2=(1-.15)*N1//         minimum speed of the flywheel in rpm
T=3//                   time required to punch a hole
//=======================
A=b*t//           area cut of each stroke in cm^2
W=w*A//            work required to cut a strip in Nm
w1=2*pi*N1/60//        speed before cut in rpm
w2=2*pi*N2/60//        speed after cut in rpm
m=2*W/(k^2*(w1^2-w2^2))//       mass of the flywheel required in kg
a=(w1-w2)/T//           angular acceleration in rad/s^2
Ta=m*k^2*a//             torque required in Nm
printf('Mass of the flywheel= %.3f kg\n Amount of Torque required= %.3f Nm',m,Ta)

