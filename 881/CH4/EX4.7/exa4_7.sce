clc;
//Example 4.7
//Page no 140
//solution

//(a)

V=12; //dc
Vm=2; //Vp
Fm=4; //kHz
Vb=4; //dc
R1=100*(10^3); //kohm
C1=0.001*(10^-6); //uF

//(a)

disp("(a)The carrier frequency is determine from equation 4-36(refer pgno 137): ");

fc=(1/(R1*C1));
Fc=fc/(10^2)

disp('kHz',Fc,"fc =  ");

//(b)

disp("(b)The upper and lower side frequency are simply the sum and difference frequencies between the carrier and the modulating signal. ");

fu=Fc+Fm;

disp('kHz',fu,"Fusf =  ");

fl=Fc-Fm;

disp('kHz',fl,"Flsf =  ");
