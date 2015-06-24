//Chapter 6, Problem 5
clc;
D=2*10^-6;                      //Flux density
e0=8.85*10^-12;                 //permittivity of free space
er=5;                           //relative permittivity
E=D/(e0*er);                    //Calculating voltage gradient
disp("Since D/E =ε0εr , hence voltage gradient,");
printf("\n\n\n Voltage gradient = %f V/m",E);
