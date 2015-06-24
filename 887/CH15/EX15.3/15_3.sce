clc
//ex15.3
M_r=5000;      //relative permeability
R=10*10^-2;
r=2*10^-2;
N=100;      //number of turns
//complex number 'i' is used as a symbol here
I=2*%i;      //here 'i' represents sin(200*%pi*t), not as a complex number
M_o=4*%pi*10^-7;      //permeability of free space
M=M_r*M_o;      //permeability of the core material
phi=M*N*I*r^2/(2*R);      //flux
FL=N*phi;      //flux linkages
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('In the below two values,i represents sin(200*%pi*t)')      //t-time
disp(phi,'flux in webers')
disp(FL,'flux linkages in weber turns')
//differentiating 'λ' with respect to t
disp('In the below answer, i represents cos(200*%pi*t)')
disp(FL*200*%pi,'Voltage induced in the coil in volts')
