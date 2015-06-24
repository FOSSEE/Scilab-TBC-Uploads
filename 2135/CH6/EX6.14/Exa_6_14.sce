//Exa 6.14
clc;
clear;
close;
format('v',7);

//Given Data :
m=2;//Kg
p1=15;//bar
p2=15;//bar
Tsup1=250;//degree C
T1=Tsup1;//degree C
V1=0.152;//m^3/Kg(at 15 bar)
hf2=844.7;//KJ/Kg(at p=15 bar)
hg2=2789.9;//KJ/Kg(at p=15 bar)
hfg2=1945.2;//KJ/Kg(at p=15 bar)
h1=2923;//KJ/Kg
Vg2=0.1317;//m^3/Kg(at 15 bar)
x2=0.6;//dry
h2=hf2+x2*hfg2;//KJ/Kg
V2=x2*Vg2;//m^3/Kg
w=(p2*V2-p1*V1)*10^5/10^3;//KJ/Kg
W=m*w;//KJ
disp(W,"Total work done in KJ : ");
H2subH1=m*(h2-h1);//KJ/Kg
disp(H2subH1,"Change in enthalpy in KJ/Kg : ");
Q=H2subH1;//KJ
disp(Q,"Heat transfered in KJ : ");
//Steam table is used to get some data.
