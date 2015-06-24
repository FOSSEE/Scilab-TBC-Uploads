clc
clear

N1=1000;
Z1=30;
Z2=45;
Z3=75;

N13=Z3/Z1;
N3=N1/N13;

printf('Velocity Ratio of gear train= %2.1f ',N13);
printf('\n');
printf('N3= %2.1f RPM',N3);
printf('\n');
