clc;
t1=267+273;      //temp in Kelvin
eff=0.25;        //efficiency
t2=t1*(1-eff);   //calculating t2 using eff=1-(t2/t1)
disp(t2-273,"Temperature in celcius = ");      //displaying result