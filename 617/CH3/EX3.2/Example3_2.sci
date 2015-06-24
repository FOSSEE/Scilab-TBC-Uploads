clear;
clc();

// To compute tempertures at the contact surfaces inside the furnaces

x1=9/12;             // thickness of firebrick in ft
k1=0.72;             // thermal conductivity of firebrick in Btu/hr-ft-degF
x2=5/12;             // thickness of insulating brick in ft
k2=0.08;             // thermal conductivity of insulating brick in Btu/hr-ft-degF
x3=7.5/12;           // thickness of redbrick in ft
k3=0.5;              // thermal conductivity of firebrick in Btu/hr-ft-degF
t1=1500;             // inner temperature of wall in degF
t2=150;              // outer temperature of wall in degF

// resistances of mortar joints are neglected
q=(t1-t2)/(x1/k1+x2/k2+x3/k3);   // heat flow per square ft in Btu/hr
t2=t1-(q*x1/k1);                 // first contact temperature in degF
printf("\n The temperature at the contact of firebrick and insulating brick is %d degF",t2);

t3=t2-(q*x2/k2);                 // second contact temperature in degF
printf("\n The temperature at the contact of insulating brick and red brick is %d degF",t3);