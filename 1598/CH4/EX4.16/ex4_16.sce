clc;
eo=8.85*10^-12;  //constant
o=80*10^-6;  //surface charge density in c/ square
r=1.2;  //in m
q=o*(%pi)*(r^2);  //calculating charge in Coulomb
fi=q/eo;  //calculating electric flux
disp(q,"Charge in Coulomb = ");  //displaying result
disp(fi,"Electric flux in N m square/c = ");  //displaying result