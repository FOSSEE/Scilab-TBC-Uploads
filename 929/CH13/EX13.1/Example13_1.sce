//Example 13.1

clear;

clc;

R=10*10^3;

vImin=1*10^(-3);

vImax=10;

CnCusum=20*10^(-12);

VA=100;

rd=2*10^6;

ft=1*10^6;

ic=vImax/R;

ro=VA/ic;

re=26;

Rarec=(1/R)+(1/ro)+(1/rd);

Ra=1/Rarec;

b0rec=0.5;

Rb=Ra*b0rec;

RE=Rb-re;

Rbstd=4.3*10^(3);

printf("RE=%.2f kohms\n",RE*10^(-3));

y=poly(0,'Cf');

printf("Roots obtained for Cf :");

disp(roots(((%pi*Rbstd*ft)*(y^2))-y-(CnCusum)));

printf("Choosing positive root Cf=90 pF");