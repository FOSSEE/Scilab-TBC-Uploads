clc;
t1=327+273;     //temp in Kelvin
t2=127+273;     //temp in Kelvin
eff=1-(t2/t1);  //calculating efficiency
hi=4185;        //1 kcal=4185 Joule
W=eff*hi;       //calculating Work in joule
disp(W,"Work in Joule = ");   //displaying result