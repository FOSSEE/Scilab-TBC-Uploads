clc;
Ve=1.37; //Volt
Re=910; //Ohm
re=300; //Ohm
Ie=Ve/(Re+re);//Ampere
re1=0.025/Ie; //Ohm
Rc=1500; //Ohm
RL=10000; //Ohm
rc=(Rc*RL)/(Rc+RL);//Ohm
Av=rc/(re1+re);
disp(' ',Av,"Av=");//The answers vary due to round off error


