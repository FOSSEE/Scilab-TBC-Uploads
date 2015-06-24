//pagenumber 370 example 1
clear
rd=12*10^3;//ohm
r=1*10^6;//ohm
resour=470;//ohm
vdd=30;//volt
idss=3*10^-3;//ampere
vd=2.4;//volt

vgs=[0.24 2.175 1.41];
vgs=roots(vgs);
vgs=0.7;
id=idss*((1-(vgs/vd)))^2;
vds=vdd-id*(rd+resour);
g=(2*idss/vd)*(1-((vgs/vd)));
volgai=-g*rd;
disp("vgs   =   "+string((vgs))+"volt");
disp("id   =   "+string((id))+"ampere");
disp("vds   =   "+string((vds))+"volt");
disp("voltage gain   =   "+string((volgai)));
