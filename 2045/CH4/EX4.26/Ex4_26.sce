//example 26
colres=1*10^3;//ohm
beta1=50;
vbe=0.3;//volt
vcc=6;//volt
rb=10*10^3;//ohm
re=100;//ohm
em1cur=((vcc-vbe)*(beta1+1))/((rb+((beta1+1)*re)));
for q=1:2
    if q==2 then
        colres=1*10^3;
        vce=vcc-(colres+re)*em1cur;
        ic=vcc/(colres+re);
        disp("collector to emitter   =   "+string((vce))+"volt");
        disp("collector current   =   "+string((ic))+"ampere");
    end
    if q==1 then
        colres=50;
        rb=100;
        vce=vcc-(colres+rb)*em1cur;
        disp("emitter current   =   "+string((em1cur))+"ampere");
        disp("collector to emitter   =   "+string((vce))+"volt");
    end
end





