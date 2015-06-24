//Ex:7.6
clc;
clear;
close;
d1=80*10^-6;// core diameter of fiber 1 in m
d2=60*10^-6;// core diameter of fiber 1 in m
NA1=0.25;// numerical aerture of fiber 1
NA2=0.20;// numerical aerture of fiber 2
a1=1.9;// for fiber 1
a2=2.1;// for fiber 2
n_cd=(d2/d1)^2;
n_NA=(NA2/NA1)^2;
n_a=(1+(2/a1))/(1+(2/a2));
n_t=n_cd*n_NA*n_a;// total coupling efficiency in the frw direction
Lt=-10*log(n_t)/log(10);// total loss at the joint in the frw direction in dB
n_cd1=1;
n_NA1=1;
n_a1=(1+(2/a2))/(1+(2/a1));
n_t1=n_cd1*n_NA1*n_a1;// total coupling efficiency in the backward direction
Lt1=-10*log(n_t1)/log(10);// total loss at the joint in the backward direction in dB
printf("The total loss at the joint in the frw direction =%f dB", Lt);
printf("\n The total loss at the joint in the backward direction =%f dB", Lt1);