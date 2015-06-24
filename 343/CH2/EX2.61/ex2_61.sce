clc
Z1=14.14-%i*14.14;            //Assigning values to parameters
Z2=26+%i*15;
I=10;
Zeq=Z1+Z2;
V=I*Zeq;
Zeq=(Z1*Z2)/(Z1+Z2);
I=V/Zeq;
disp("Amperes",polar(I),"Supply current");