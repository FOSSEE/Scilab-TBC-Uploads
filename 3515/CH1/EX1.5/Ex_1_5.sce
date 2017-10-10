// Exa 1.5
format('v',7);
clc;
clear;
close;
// Given data
Rf= 1;// in Mohm
Rf=Rf*10^6;//in ohm

// Part(a)
V1=1;//in volt
V2=2;//in volt
V3=3;//in volt
R1= 500;// in kohm
R1=R1*10^3;//in ohm
R2= 1;// in Mohm
R2=R2*10^6;//in ohm
R3= 1;// in Mohm
R3=R3*10^6;//in ohm
Vo= -Rf*(V1/R1+V2/R2+V3/R3);// in volt
disp(Vo,"(a) Output voltage in volt is : ")

// Part(b)
V1=-2;//in volt
V2=3;//in volt
V3=1;//in volt
R1= 200;// in kohm
R1=R1*10^3;//in ohm
R2= 500;// in kohm
R2=R2*10^3;//in ohm
R3= 1;// in Mohm
R3=R3*10^6;//in ohm
Vo= -Rf*(V1/R1+V2/R2+V3/R3);// in volt
disp(Vo,"(b) Output voltage in volt is : ")
