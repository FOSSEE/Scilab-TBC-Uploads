clear;
clc;

//Caption: To find parameters of power amplifier using pnp gemanium transistor

//Given Data
B=100;//beta
Ico=-5;//in mA
Ic=-1;//in mA
Vcc=40;
Re=5;//in ohm
Rc=10;//in ohm

//Ic= BIb + (1+B)*Ico
//Ic=B(Ib+Ico)
Ib=-(Ic/B)+Ico;
disp('mA',Ib,'Ib=');

//Neglecting Vbe
Rb=(5-Vcc)/(Ib*0.001);
disp('ohm',Rb,'Rb=');

Vce=Vcc-15;
if(Vce>(Vcc/2))
    S=(1+B)*(1+(Rb/Re))/(1+B+(Rb/Re));
    disp(S,'Stability Factor is=');
end

A=-(Vcc+(2*Ic*(Re+Rc)))*(S)*(0.007*Ico*0.01);

disp('degreeC/W',1/A,'theta=');

//end