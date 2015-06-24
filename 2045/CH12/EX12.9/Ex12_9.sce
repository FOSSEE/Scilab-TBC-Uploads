//pagenumber 556 example 9
clear
voltag=30;//volt
w=0.51;
i1=10*10^-6;//ampere
v1=3.5;//volt
curen1=10*10^-3;//ampere
freque=60;//hertz
tridun=50*10^-6;//second
pinvol=w*voltag+0.6;
r=(voltag-pinvol)/i1;
disp("max limit resistance   =   "+string((r))+"ohm");
r=(voltag-v1)/(curen1);
disp("min limit resistance   =   "+string((r))+"ohm");
capac1=0.5*10^-6;//farad
r=(1/freque)*(1/(capac1*log(1/(1-w))));
disp("resistance   =   "+string((r))+"ohm");
rb2=10^4/(w*voltag);
rb1=tridun/capac1;
disp("rb1   =   "+string((rb1))+"ohm");
disp("rb2   =   "+string((rb2))+"ohm");
disp("peak voltage   =   "+string((pinvol))+"volt");

