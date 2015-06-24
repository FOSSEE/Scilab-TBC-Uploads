clc
clear
//Initialization of variables
P1=200 //psia
T1=500 //psia
m=1 //lb /s
P4=140 //psia
P11=1 //psia
x=0.808
//calculations
disp("From mollier charts,")
h1=1268.9 //Btu/lb
h4=1234.7 //Btu/lb
V4=223.8*sqrt(h1-h4)
v4=3.584 //cu ft/lb
A4=m*v4/V4
h11=907.4 //Btu/lb
V11=223.8*sqrt(h1-h11)
vf=0.01614 //cu ft/lb
vg=333.6 //cu ft/lb
vfg=vg-vf
v11=x*vg
A11=m*v11/V11
//results
printf("Area of nozzle = %.5f sq ft",A4)
printf("\n Area of nozzle = %.4f sq ft",A11)
