//example 16
clear
vcc=1.5//volt in book should be changed as 1.5
colres=1.5*10^3;//ohm
emresi=0.27*10^3;//ohm
r1=2.7*10^3;//ohm
r=2.7*10^3;//ohm
beta1=45;
basre1=690;//ohm
voltag=r*vcc/(r*r1);
basres=(r*r1)/(r+r1);
vbe=0.2;
for q= 1:2
    if q==2 then
        disp("resistance   =   "+string((basre1))+"ohm");
        basres=basres+basre1;
    end
    bascur=(((voltag+vbe)))/(basres+(45*(emresi)));
    colcur=beta1*bascur;
    vce=(vcc+colcur*colres+(bascur+colcur)*emresi);
    disp("current   =   "+string((colcur))+"ampere");
    disp("vce   =   "+string((vce))+"volt");
end
