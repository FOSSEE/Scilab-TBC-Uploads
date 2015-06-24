//Ex:20
clc;
clear;
close;
g_t=26;//gain of satellite in db
l_s=207;//Path losses in db
l_ss=l_s+1.5+0.5+1.2;// all losses
g_r=50;// in db
p_o=10*log(1)/log(10);// output of the transponder in dbW
g_n=127;// linear gain in dbW
p_r=p_o-g_n;//received power in dbW
p_t=p_r-g_r-g_t+l_ss;//in dbW
printf(" Power output of an uplink tarnsmitter=%f dbW ", p_t);
p_tW=10^(p_t/10);
printf("\n Power output of an uplink tarnsmitter=%f W",p_tW);