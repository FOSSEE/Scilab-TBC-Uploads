clc;
hic=650; //Ohm
hfc=150; 
re=hic/hfc; //Ohm
Re=2000; //Ohm
RL=8000; //Ohm
rE=(Re*RL)/(Re+RL); //Ohm
Zbase=hfc*(re+rE); //Ohm
R1=190000; //ohm
Zin1=(R1*Zbase)/(R1+Zbase);//Ohm//for emitter feedback
R1=30000; //Ohm
R2=39000; //Ohm
Req=(R1*R2)/(R1+R2); //Ohm
Zin2=(Zbase*Req)/(Zbase+Req);//Ohm //for voltage divider biased
disp('kOhm',Zin1/1000,"Zin1=");
disp('kOhm',Zin2/1000,"Zin2=");



