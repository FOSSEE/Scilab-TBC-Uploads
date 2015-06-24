//example 28
clear
beta1=50;
vbb=5;//volt
rb=10*10^3;//ohm
colres=800;//ohm
re=1.8*10^3;//ohm
vcc=5;//volt
ib=(0.7-vbb)/((rb)+(beta1+1)*re);//correction in book
re=beta1*ib;
ie=(ib+re);
vce=vcc-colres*re-re*ie;
vcb=(vce-0.7);
disp("base current   =   "+string((ib))+"ampere");
disp("collector current   =   "+string((re))+"ampere");
disp("emitter current   =   "+string((ie))+"ampere");
disp("vcb   =   "+string((vcb))+"volt");//correction in book
disp("the collector base junction is reverse biased the transistor in active region");


