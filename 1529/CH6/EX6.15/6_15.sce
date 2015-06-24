//Chapter 6, Problem 15
clc;
V=1.25*10^3;                    //Voltage across terminals
C=0.2*10^-6;                    //Capacitance of capacitor
E=50*10^6;                      //Dielectric strength
e0=8.85*10^-12;
er=6;
d=(V/E);                                //Calculating distance between plates
A=(C*d)/(e0*er);                        //Calculating area of plates
disp("(a)")
printf("Thickness of the mica needed = %f mm\n\n",d*10^3);
disp("(b)")
printf("Area of a plate = %f cm2",A*10^4);
