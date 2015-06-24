//example 37
clear
beta1=160;
vb=-0.8;//volt
re=2.5*10^3;//ohm
vcc=10;//volt
for q=[160 80]
    ib=(vcc-vb)*10^2/((re)*(1+q)*400);
    ic=q*ib;
    colres=1.5*10^3;//ohm
    disp("collector current at beta "+string((q))+"   =   "+string((ic))+"ampere");//correction in the book
    ie=(1+beta1)*ib;
    vce=-(vcc-colres*ic-re*ie);
    disp("vce at beta "+string((q))+"   =   "+string((vce))+"volt");//correction in the book
end
