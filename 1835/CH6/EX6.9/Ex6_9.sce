//CHAPTER 6 ILLUSRTATION 9 PAGE NO 182
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
P=5*10^3//            power delivered by motor in watts
N1=360//               speed of the flywheel in rpm
I=60//                mass moment of inertia in kg m^2
E1=7500//             energy required by pressing machine for 1 second in Nm
//========================
Ehr=P*60*60//      energy sipplied per hour in Nm
n=Ehr/E1
E=E1-P//           total fluctuation of energy in Nm
w1=2*pi*N1/60//     angular speed before pressing in rpm 
w2=((2*pi*N1/60)^2-(2*E/I))^.5//       angular speed after pressing in rpm 
N2=w2*60/(2*pi)
R=N1-N2//              reduction in speed in rpm
printf('No of pressings that can be made per hour= %.0f\n Reduction in speed after the pressing is over= %.2f rpm ',n,R)
