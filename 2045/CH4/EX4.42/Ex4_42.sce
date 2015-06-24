//pagenumber 226 example 42
clear
beta1=50;
vb=0.6;//volt
vcc=18;//volt
colres=4.3*10^3;//ohm
ic=1.5*10^-3;//ampere
vce=10;//volt
stability=4;
r1=(vcc-vce)/ic;
re=r1-colres;
w=(beta1+1)*(stability)*re/(1+beta1-stability);
disp("re   =   "+string((re))+"ohm");
disp("rb   =   "+string((w))+"ohm");//correction in the book

