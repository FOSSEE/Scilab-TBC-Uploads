//pagenumber 405 example 6
clear
vds=14;//volt
idq=3*10^-3;//ampere
vdd=20;//volt
g=2*10^-2;
rd=50*10^3;//ohm
vgs=-1.5;//volt
w=(vdd-vds)/idq;
r1=-vgs/idq;
r2=w-r1;
inpres=1/(1-(0.8*((r1)/(r1+r2))));
volgai=(r1+r2)/(r1+r2+(1/(g)));
disp("r1   =   "+string((r1))+"ohm");
disp("effective input resistance   =   "+string((inpres))+"r3ohm");
disp("r2   =   "+string((r2))+"ohm");


disp("voltage gain   =   "+string((volgai))+"av`");
