clc
clear

D1=600;
D2=300;
N1=100;
VR=D1/D2;
N2=VR*N1;

printf('Case One \n');
printf('Velocity Ratio= %2.2f',VR);
printf('\n');
printf('Speed of driven shaft= %2.2f RPM',N2);
printf('\n\n');

printf('Case Two \n');
VR=(D1+5)/(D2+5);
N2=VR*N1;
printf('Velocity Ratio= %2.2f',VR);
printf('\n');
printf('Speed of driven shaft= %2.2f RPM',N2);
printf('\n\n');

printf('Case Three \n');
S=4;
VR=[(D1+5)/(D2+5)]*[(100-S)/100];
N2=VR*N1;
printf('Velocity Ratio= %2.2f',VR);
printf('\n');
printf('Speed of driven shaft= %2.2f RPM',N2);
printf('\n\n');
