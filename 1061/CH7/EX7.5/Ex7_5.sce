//Ex:7.5
clc;
clear;
close;
d1=60*10^-6;// core diameter of fiber 1 in m
d2=50*10^-6;// core diameter of fiber 1 in m
NA1=0.25;// numerical aerture of fiber 1
NA2=0.22;// numerical aerture of fiber 2
a1=2.0;// for fiber 1
a2=1.9;// for fiber 2
n_cd=(d2/d1)^2;
n_NA=(NA2/NA1)^2;
n_a=(1+(2/a1))/(1+(2/a2));
n_t=n_cd*n_NA*n_a;// total coupling efficiency
Lt=-10*log(n_t)/log(10);// total loss at the joint in dB
printf("The total coupling efficiency in the frw direction =%f", n_t);
printf("\n The total loss at the joint in the frw direction =%f dB", Lt);
printf("\n In the backward direction n_cd & n_a are all unity therefore there will be no loss in the backward direction of transmission of the signal ");