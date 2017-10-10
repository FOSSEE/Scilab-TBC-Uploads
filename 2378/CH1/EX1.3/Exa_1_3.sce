//Torsional spring constant of a propeller shaft
//Exa_1_3
clc;
clear;
//refer fig:1.25
G=80e+9;        //shear modulus of shaft in N/m^2
D12=0.3;        //outer diameter of AA section in m
d12=0.2;        //inner diameter of AA section in m
l12=2;        //length of 12 segment in m
kt12=(G* %pi *(D12^4-d12^4))/(32*l12);        //spring constant of section 12
       
D23=0.25;        //Outer diameter of BB section in m
d23=0.15;        //inner diameter of BB section in m
l23=3;        //length of 23 segment in m
kt23=(G* %pi *(D23^4-d23^4))/(32*l23);        //spring constant of section 23

kteq=(kt12*kt23)/(kt12+kt23);
disp(kteq,"Torsional spring constant of a propeller shaft in N-m/rad = ");
