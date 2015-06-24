//Chapter 6, Problem 7
clc;
Q=1.2*10^-6;                //Charge
A=4*10^-4;                  //Area of plates
d=0.1*10^-3;                //Distance between plates
e0=8.85*10^-12;             
er=100;
C=(e0*er*A)/d;              //Calculating capacitance
V=Q/C;                         //Calculating potential difference
disp("(a)");
printf("Capacitance = %f pF\n\n\n",C*10^12);
disp("(b)");
printf("p.d. between the plates = %f V",V);
