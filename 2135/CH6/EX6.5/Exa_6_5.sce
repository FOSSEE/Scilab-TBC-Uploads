//Exa 6.5
clc;
clear;
close;
format('v',8);

//Given Data :
p1=0.1;//bar
p2=0.1;//bar
x1=0.95;
t3=20;//degree C
t2=35;//degree C
t4=45;//degree C
hf1=191.8;//KJ/Kg
hfg1=2397.9;//KJ/Kg
h1=hf1+x1*hfg1;//KJ/kg
h2=188.4;//KJ/Kg(at 45 degree C)
h3=83.9;//KJ/Kg(at 20 degree C)
h4=146.6;//KJ/Kg(at 35 degree C)
//m1*(h1-h2)=mw*(h4-h3)
mwBYm1=(h1-h2)/(h4-h3);//Kg of water/Kg of steam
disp(mwBYm1,"Ratio of mass flow rate of cooling water to condensing steam(Kg of water/Kg of steam): ");
//Steam table is used to get some data.
