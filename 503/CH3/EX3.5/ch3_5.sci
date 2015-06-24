// Equivalent circuit referred to(i)HV side (ii)LV side

clc;

N_1=2000;
N_2=200;

a=N_1/N_2;

Z_2=complex(.004,.005);            //low voltage impedence
Z_2hv=a^2*Z_2;
disp(Z_2hv,'Z_2 referred to hv side(ohm)');                        //when referred to hv side

Y_0=complex(.002,-.015);            //shunt branch admittance
Y_0hv=Y_0/a^2;
disp(Y_0hv,'Y_0 referred to hv side(mho)');

Z_1=complex(.42,.52);                //low voltage impedence
Z_1lv=Z_1/a^2;
disp(Z_1lv,'Z_1 referred to lv side(ohm)');