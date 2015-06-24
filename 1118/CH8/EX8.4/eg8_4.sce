clear;
clc;

x1_pu=.12;
sb2=15;
sb1=10;
xg2=8;
xg1=.12;
sbg2=5;
sbg1=100;
xtf=6;
sbtf=15;
xt=complex(4,60);
kvl=230;
x2_pu=x1_pu*(sb2/sb1);
xg_pu1=x2_pu*sbg1;
printf("\n The per unit reactance of generator 1 is: %.2f",xg_pu1);
xg_pu2=xg2*(sb2/sbg2);
printf("\n The per unit reactance of generator 2 is: %.2f",xg_pu2);
xtf_pu=xtf*(sb2/sbtf);
printf("\n The per unit reactance of transformer is: %.2f",xtf_pu);
xt_pu=xt*sb2/((kvl)^2);
printf("\n The per unit impedance of transmission line is:");
disp(xt_pu)

