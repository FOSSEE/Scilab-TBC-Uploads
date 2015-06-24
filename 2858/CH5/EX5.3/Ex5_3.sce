//example 5.3
clc; funcprot(0);
H=7;
Gamma=17.5;
q0=Gamma*H
disp(q0,"pressure change in kN/m^2");
//part2
//from figure
Ileftside=0.445;
Irightside=0.445;
deltasigma=q0*(Ileftside+Irightside);
disp(deltasigma,"change in stress in kN/m^2");
//partc
//from figure 5.11
I=0.24;//I'
Dsigma1=43.75*I;//deltasigma1
I2=0.495;//I'
Dsigma2=I2*q0;//deltasigma2
I3=0.335;//I'
Dsigma3=I3*78.75;//deltasigma3
Dsigma=Dsigma1+Dsigma2-Dsigma3;
disp(Dsigma,"total stress increase in A in kN/m^2");

