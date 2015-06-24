clear;
clc;

sb=100;
vb=15;
xg=.75;
sbg=75;
xtf=.1
sbtf=50;
xt=100;
kvl=220;
rl=500;
vl=210;
xg_pu=xg*(sb/sbg);
xtf_pu=xtf*(sb/sbtf);
xt_pu=xt*sb/((kvl)^2);
rl_pu=rl*sb/((kvl)^2);
vpu=vl/kvl
i_pu=vpu/rl_pu;
v=i_pu*(rl_pu+(%i)*(xg_pu+xt_pu+xt_pu));
vg=round(sqrt(real(v)^2+imag(v)^2)*vb);
printf("The terminal voltage per phase is: %.2f kV",vg/sqrt(3));

//difference in answer is due to rounding off
