//Exa 6.17
clc;
clear;
close;
format('v',7);

//Given Data :
p1=1;//bar
x1=0.523;//dry
Vg1=1.694;//m^3/Kg(at 1 bar)
hf1=417.5;//KJ/Kg(at p=1 bar)
hfg1=2258;//KJ/Kg(at p=1 bar)
h1=hf1+x1*hfg1;//KJ/Kg
V1=x1*Vg1;//m^3/Kg
V2=V1;//m^3/Kg(Constant volume process)
Vg2=V2;//m^3/Kg
p2=2;//bar;//at Vg2 from steam table
hg2=2706.3;//KJ/Kg(at 2 bar)
h2=hg2;//KJ/Kg
W=0;//KJ/Kg of steam
q=W+(h2-h1)-100*(p2*V2-p1*V1);//KJ/Kg
disp(q,"Heat transfered in KJ/Kg : ");
//Steam table is used to get some data.
