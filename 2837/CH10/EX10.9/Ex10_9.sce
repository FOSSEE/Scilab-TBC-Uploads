clc
clear
//Initialization of variables
p1=20 //psia
p2=140 //psia
J=778
t2=150 //F
t1=30 //F
//calculations
disp("From Table A-3,")
v1=2.0884 //cu ft/lb
v2=0.33350 //cu ft/lb
h2=95.709
h1=81.842
n=log(p2/p1) /log(v1/v2)
W=(p2*v2-p1*v1)*144/(1-n)
du=h2-h1 + (p1*v1-p2*v2)*144/J
Q=du+W/J
s2=0.17718
s1=0.18126
Q2=((t2+t1)/2 +460) *(s2-s1)
//results
printf("Work of compression = %d ft-lb",W)
printf("\n Heat removed per pound of refrigerant = %.3f Btu/lb",Q)
printf("\n Heat removed in case 2 = %.4f Btu",Q2)
