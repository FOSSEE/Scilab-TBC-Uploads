//example 32
alpha1=0.99;
rebacu=1*10^-11;//ampere
colres=2*10^3;//ohm
vcc=10;//volt
bascur=20*10^-6;//ampere
beta1=alpha1/(1-alpha1);
i1=(1+beta1)*rebacu;
colcur=beta1*bascur+i1;
em1cur=-(bascur+colcur);
vcb=vcc-colcur*colres;
vce=vcb-0.7;
disp("collector current   =   "+string((colcur))+"ampere");
disp("emitter current   =   "+string((em1cur))+"ampere");
disp("collector emitter voltage   =   "+string((vce))+"volt");
