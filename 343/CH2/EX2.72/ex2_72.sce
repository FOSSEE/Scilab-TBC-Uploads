clc
V=200;               //Assigning values to parameters
Z1=5*%i;
Z2=5+%i*8.66;
Z3=15;
Z4=-10*%i;
Y1=1/Z1;
Y2=1/Z2;
Y3=1/Z3;
Y4=1/Z4;
Yeq=Y1+Y2+Y3+Y4;
Zeq=1/Yeq;
I=V/Zeq;
disp("Amperes",I,polar(I),"Total current");