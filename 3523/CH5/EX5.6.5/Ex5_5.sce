//Example 5// Ch 5
clc;
clear;
close;
// given data
d=0.001;
a = 0.1*10^-2;//radii of concentric circle in meters
b = 2.1*10^-2;//radii of concentric circle in meters
p = 101.3;//gas pressure in kPa
p1=3*p;
p2=5*p;
C =  -2400.4;//constant value
A = 0.027;//constant value
As = 10^8;//avalanche size
ri = 0.0772;//in m
V0 = [log(10^8)-{(C*p)*(ri-a)}]*(b-a)/[A*{(1/a)-(1/ri)}];
printf("corona onset voltage is %f kV \n",V0)
V0pos = 13.1;//in kV
V0neg = 13.7;//in kV
printf("positive corona onset voltage %f kV \n",V0pos)
printf("negative corona onset voltage %f kV \n",V0neg)

//acc. to eq N2>=N1 and Neph>=1 with increase of gas pressure improves the dielectric strength of the gas since breakdown voltage increses with gas pressure
