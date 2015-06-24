clc;
//e.g 22.13
gm=4500*10**-6;
RD=3*10**3;
RL=5*10**3;
vin=100*10**-3;
ID=2*10**-3;
rl=(RD*RL)/(RD+RL);
VO=gm*rl*vin;
disp('V',VO*1,"VO=");
