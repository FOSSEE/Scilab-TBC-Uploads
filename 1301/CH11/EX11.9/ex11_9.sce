clc;
woa=3000;         //work ouput of a in Joule
wob=2000;         //work output of b in Joule
woc=1000;         //work output of c in Joule
hi=4185;          //1 kcal=4185 Joule
t1=500;           //temp in Kelvin
t2=300;           //temp in Kelvin
eff=1-(t2/t1);    //efficiency
effa=woa/hi;     //calculating efficiency of a
effb=wob/hi;     //calculating efficiency of b
effc=woc/hi;     //calculating efficiency of c
disp(effa*100,"Efficiency of A = ");        //displaying result
disp(effb*100,"Efficiency of B = ");        //displaying result
disp(effc*100,"Efficiency of C = ");        //displaying result
