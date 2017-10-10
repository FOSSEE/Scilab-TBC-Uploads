//Example 6// Ch 5
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
V01 = [log(10^8)-{(C*p1)*(ri-a)}]*(b-a)/[A*{(1/a)-(1/ri)}];
V02 = [log(10^8)-{(C*p2)*(ri-a)}]*(b-a)/[A*{(1/a)-(1/ri)}];
printf("corona onset voltage at 3atmp is %f kV \n",V01)
printf("corona onset voltage at 5atmp is %f kV \n",V02)
V01pos = 41.9;//in kV at 3 atmp
V01neg = 42.2;//in kV at 3 atmp
V02pos = 69.2;//in kV at 5 atmp
V02neg = 69.8;//in kV at 5 atmp
printf("positive corona onset voltage %f kV \n",V01pos)
printf("negative corona onset voltage %f kV \n",V01neg)
printf("positive corona onset voltage %f kV \n",V02pos)
printf("negative corona onset voltage %f kV \n",V02neg)
//answer given in the book is wrong

//acc. to eq N2>=N1 and Neph>=1 with increase of gas pressure improves the dielectric strength of the gas since breakdown voltage increses with gas pressure
