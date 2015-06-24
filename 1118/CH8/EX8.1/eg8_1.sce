clear;
//clc();
z=complex(4,60);
mva_base=100;
kv_base=230;
zpu=z*mva_base/(kv_base^2);
printf('the per unit impedance is:');
disp(zpu)

ys=(%i)*(2*10^(-3));
ypu=ys*(kv_base^2)/mva_base;
printf("the per unit admittance is:");
disp(ypu);
