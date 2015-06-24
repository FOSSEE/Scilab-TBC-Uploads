clc
clear

m=1;
P1=1;
P2=5;
T1=27+273;
n=1.25;
R=0.287;

W=m*R*T1*log(P2/P1);
printf('Work Done for Isothermal Process: %3.2f kJ/kg \n\n',W);
printf('\n');

G=1.4;
W=[G/(G-1)]*[m*R*T1]*[((P2/P1)^((G-1)/G))-1];
printf('Work Done for Isentropic Process: %3.2f kJ/kg \n\n',W);
printf('\n');

W=[n/(n-1)]*[m*R*T1]*[((P2/P1)^((n-1)/n))-1];
printf('Work Done for Polytropic Process: %3.2f kJ/kg \n\n',W);
printf('\n');
