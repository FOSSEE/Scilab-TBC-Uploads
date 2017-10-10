//EXAMPLE 25.2
//ELECTROMAGNETIC RELAY 

clc;
funcprot(0);

//Variable Initialisation
T=800;..........//Total number of turns
CA=5*5;..........//Cross sectional area in Centi Meter^2
x1=0.5;..........//Air gap length in Centi Meter
Li=1.25;.............//Coil current in Amperes

Pag=(4*3.14*10^-7*CA*10^-4)/(agl*10^-2);........//Permeance at airgap
Lx1=T^2*Pag;.....................................//Coil Inductance at x1 in Henry
y=round(Lx1*1000)/1000;...........................//Rounding of decimal places
disp(y,"(a).(i).Coil Inductance in Henry:");
E=(0.5*y*Li^2);.....................//Energy stored in magnetic field in Joules
y1=round(E*1000)/1000;...........//Rounding of decimal places
disp(y1,"(ii).Energy stored in magnetic field in Joules:");

x=poly(0,"x");
Wfd=(1/2)*T^2*4*3.14*10^-7*CA*10^-4*Li^2/(x);............//Function for mechanical energy in terms of air gap
y=derivat(Wfd);
disp(y,"(b).Mechanical Energy :");
Wfd1=-(1/2)*T^2*4*3.14*10^-7*CA*10^-4*Li^2/(x1^2*10^-4);..............//Mechanical energy at x1=0.5 in Joules
disp(Wfd1,"Mechanical Energy when evaluated at x=0.5*10^-2 in NW:");

x2=0.25;....................//Air gap in Centi Meter
Lx2=2*Pag*T^2;................//Coil inductance at x2 in Henry
r=round(Lx2*1000)/1000;.......//Rounding of decimal places
Eei=(Li^2)*(Lx2-Lx1);.........//Electrical input during change over of the operating point in Joules
dWfd=1/2*Eei;..............//Additional stored energy in field in Joules
Me=Eei-dWfd;................//Mechanical energy based on forced calculation and mechaical displacement in Joules
disp(Me,"(c).Mechanical energy based on forced calculation and mechaical displacement in Joules:");

Pm2=2*Pag;.........//Slope of OC
Pm1=Pag;...........//Slope of OH
BK=1/2*(T*Li);.....//mmf required for establishing a flux with an air-gap of 0.25 in Ampere Turns
KHC=1/4*Eei;........//Eei=Area of rectangle BDCH in Joules
Eef=Eei-KHC;........//Electrical energy being fed during the process in Joules
Ife=Me-KHC;...........//Me=Area of triangle OHC in Joules, Increase in field energy stored
meo=Eef-KHC;.........//Mechanical energy output in Joules
disp(BK,"mmf required for establishing a flux with an air-gap of 0.25 in Ampere Turns:");
disp(KHC,"Area of triangle KHC");
disp(Eef,"Electrical energy being fed during the process in Joules:");
disp(Ife,"Increase in field energy stored in Joules:");
disp(meo,"Mechanical energy output in Joules:");

if Me==meo then
end
printf(" Mechanical energy remains unaffected by fast or slow movements of armature");







