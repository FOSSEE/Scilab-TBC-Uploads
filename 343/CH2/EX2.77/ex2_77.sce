clc
C=2.5*10^-6;         //Assigning values to parameters
R=15;
L=260*10^-3;
temp=(1/(L*C))-(R^2/L^2);
fr=(1/20*%pi)*sqrt(temp);
Q=(2*%pi*fr*L)/R;
Zr=L/(C*R);
disp("Hertz",fr,"Resonant frequeny");
disp(Q,"Quality factor");
disp("Ohms",Zr,"Dynamic Impedance");