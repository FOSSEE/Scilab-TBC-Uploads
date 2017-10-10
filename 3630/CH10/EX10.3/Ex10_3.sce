clc;
Re=2000; //Ohm
RL=5000; //Ohm
rE=(Re*RL)/(Re+RL); //Ohm
Ie=0.031; //Ampere
re=0.025/Ie; //Ohm
Av=rE/(rE+re);
disp(' ',Av,"Av=");//The answers vary due to round off error


