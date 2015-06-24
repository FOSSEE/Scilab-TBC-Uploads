
//Calculate the value of gm at different values of Vgs
clear;
clc;
//soltion
//given

Idss=8*10^-3;//A
Vp=4;//V
//At Vgs= -0.5 V
Vgs= -0.5;//V
gmo=2*Idss/(abs(Vp));
gm=gmo*(1-(Vgs/(-Vp)));
printf("gmo = %.0f mS\n",gmo*1000);
printf("gm (At Vgs = -0.5V) =%.1f mS\n",gm*1000);

//At Vgs= -1.5 V
Vgs= -1.5;//V
gmo=2*Idss/(abs(Vp));
gm=gmo*(1-(Vgs/(-Vp)));
printf("gm (At Vgs = -1.5V) =%.1f mS\n",gm*1000);

//At Vgs= -2.5 V
Vgs= -2.5;//V
gmo=2*Idss/(abs(Vp));
gm=gmo*(1-(Vgs/(-Vp)));
printf("gm (At Vgs = -2.5V) =%.1f mS\n",gm*1000);
