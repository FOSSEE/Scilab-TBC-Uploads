//CHAPTER 6 ILLUSRTATION 3 PAGE NO 176
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
d=38//              diameter of hole in cm
t=32//              thickness of hole in cm
e1=7//                energy required to punch one square mm
V=25//                mean speed of the flywheel in m/s
S=100//                stroke of the punch in cm
T=10//                time required to punch a hole in s
Cs=.03//                coefficient of fluctuation of speed
//===================
A=pi*d*t//                sheared area in mm^2
E1=e1*A//                 energy required to punch entire area in Nm
P=E1/T//                 power of motor required in watts
T1=T/(2*S)*t//           time required to punch a hole in 32 mm thick plate
E2=P*T1//               energy supplied by motor in T1 seconds
E=E1-E2//                maximum fluctuation of energy in Nm
m=E/(V^2*Cs)//           mass of the flywheel required
printf('Mass of the flywheel required= %.0f kg',m)


