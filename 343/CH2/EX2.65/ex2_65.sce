clc 
R=30;              //Assigning values to parameters
I=5;
V=110;
f=50;
I1=V/R;
I2=sqrt(I^2-I1^2);
Xc=V/I2;
C=1/(2*%pi*f*Xc);
disp("Farads",C,"Unknown capacitance when total current drawn is 5 A");
Inew=4;
I2new=sqrt(Inew^2-I1^2);
Xc=V/I2new;
f=1/(2*%pi*C*Xc);
disp("hertz",f,"Frequency when total current drawn is 4 A");