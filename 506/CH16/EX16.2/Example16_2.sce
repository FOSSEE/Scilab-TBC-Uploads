clear;
clc;
//Caption : Design a second order bandpass filter
//Given Value
Ao=50;//Gain
fo=160;//center frequency
B=16;//Bandwidth in Hz
C1=0.1;//in microF
C2=0.1;//in microF

//Required Formulae

Q=fo/B;
R1=(1000*Q)/(Ao*2*%pi*fo*C1);
R3=(1000*Q)/((2*%pi*fo)*(C1*C2/(C1+C2)));
//As C is in microFarad to compensate for it 1000 is multiplied
//Let r = R'
r=(10^6)/((2*%pi*fo)^2*R3*C1*C2);
R2=(R1*r)/(R1-r);

disp('K',R1,'R1=');
disp('K',R3,'R3=');
disp('K',r,'r=');
disp('K',R2,'R2=');

//end