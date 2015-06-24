//pagenumber 376 example 8
clear
vdd=10;//volt
beta1=10^-4;//ampere per square volt
ids=0.5*10^-3;//ampere
voltag=1;//volt
vgs=(sqrt(ids/beta1)+(1));
rd=(vdd-vgs)/ids;

disp("vgs   =   "+string((vgs))+"volt");
disp("rd   =   "+string((rd))+"ohm");
