clc
Xl=4;             //Assigning values to parameters
Xc=8;
Z1=1;
Z2=4*%i;
Z3=-%i*8;
Zeq=Z1+(Z2*Z3)/(Z2+Z3);
Y=1/Zeq;
disp("Mho",Y,polar(Y),"Admittance");
Xl=10;
Xc=5;
Z1=1;
Z2=10*%i;
Z3=-%i*5;
Zeq=Z1+(Z2*Z3)/(Z2+Z3);
Y=1/Zeq;
disp("Mho",Y,polar(Y),"Admittance");