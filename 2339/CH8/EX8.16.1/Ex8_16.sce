clc
clear

IP=41;
P1=1;
T1=17+273;
P2=7;
N=100;
n=1.2;

L=150/[2*N];
V1=(22/7)*(1/4)*(L);        //Along with D^2
W=[n/(n-1)]*[P1*100*V1]*[((P2/P1)^((n-1)/n))-1];
D2=[IP*60]/[W*2*N];
D=sqrt(D2);
printf('D: %3.3f m',D);
printf('\n');
