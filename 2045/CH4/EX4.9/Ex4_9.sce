//example 9
clear
vcc=12;//volt
rb=12*10^3;//ohm
colres=2*10^3;//ohm
beta1=100;
vb=0.7;//volt
vce=0.1;//volt

for q=1:2
    if q==1 then
        vbb=1;
    else
        vbb=12;
    end
    ib=(vbb-vb)/rb;
    ic=beta1*ib;
    ie=ic+ib;
    vce=vcc-ic*colres;
    if q==2 then
        ic=(vcc-0.1)/colres;
    end

    disp("the operating point at vbb   =   "+string((vbb))+"volt ic   =   "+string((ic))+"ampere vce   =   "+string((vce))+" volt");
end
beta1=ic/ib;

disp("beta at saturation   =   "+string((beta1)));

