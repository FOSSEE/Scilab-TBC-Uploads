//Exa2.40
clc;
clear;
close;
format('v',9)
// given data
// First Case:
r1=1.5/2;// in cm
// let radius thickness of insulation = r1_t
r1_t=1.5;// in cm
r2=r1+r1_t;
R_desh=500;// in M ohm
R_desh=R_desh*10^6;// in ohm
// Second case:
r1_desh=r1;// in cm (as before)
// let radius thickness of insulation = r2_t
r2_t=2.5;// in cm
r2_desh=r1+r2_t;
// since Insulation resistance , R_desh= sigma/(2*%pi*l)*log(r2/r1) and
//                               R1_desh= sigma/(2*%pi*l)*log(r2_desh/r1_desh)
// Dividing R1_desh by R1, We get
// R1_desh/R_desh = log(r2_desh/r1_desh)/log(r2/r1)
// Let R = R1_desh/R_desh, Now
R= log(r2_desh/r1_desh)/log(r2/r1);
R1_desh=R*R_desh;
disp("New insulation resistance is : "+string(R1_desh*10^-6)+" M ohm");




