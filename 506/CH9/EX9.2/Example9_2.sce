clear;
clc;

//Caption:To find resistances in 2N335 transistor
//Given Data
Rc=4;//in K
Vcc=20;//in V
Vce=10;//in V
Ic=2;//in mA
//Ic varies from 1.75 to 2.25 and B(beta) varies from 36 to 90

Re = (Vcc-Vce)/Ic - Rc;

//S=delta Ic/delta B
Ic2=2.25;//in mA
Ic1=1.75;//in mA
B2=90;
B1=36;
S=(Ic2-Ic1)/(B2-B1);
S2=(S*36*(1+90))/1.75;
disp(S2,'S2=','K',Re,'Re=','B2=90');

//S2=(1+B)*(1+(Rb/Re))/(1+B+(Rb/Re))
Rb=(S2-1)*(1+B2)*Re/(1+B2-S2);
disp('K',Rb,'Rb=');

Vbe=0.65;//in V
disp('V',Vbe,'We know that Vbe = ');

V = Vbe + ((Rb+Re*(1+B1))*Ic1/B1);
disp('Volts',V,'V = ');

R1=Rb*Vcc/V;
R2=R1*V/(Vcc-V);
disp('K',R1,'R1=');
disp('K',R2,'R2=');

//end