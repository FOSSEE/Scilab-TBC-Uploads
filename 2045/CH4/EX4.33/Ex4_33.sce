//pagenumber 220 example 33
clear
beta1=100;
revcur=20*10^-9;//ampere
colres=3*10^3;//ohm
rb=200*10^3;//ohm
vbb=5;//volt
vcc=11;//volt
em1res=2*10^3;//ohm
ib=(vbb-0.7)/rb;
ic=beta1*ib;
ie=ib+ic;
disp("base current   =   "+string((ib))+"ampere");
disp("collector current   =   "+string((ic))+"ampere");
disp("emitter current   =   "+string((ie))+"ampere");//question asked only currents
//2*10^3 ohm added to emitter
ib=-(0.7-vcc)/(rb+((1+beta1)*em1res));
ic=beta1*ib;
ie=ib+ic;
disp("base current   =   "+string((ib))+"ampere");//correction in book
disp("collector current   =   "+string((ic))+"ampere");
disp("emitter current   =   "+string((ie))+"ampere");//question asked only currents

