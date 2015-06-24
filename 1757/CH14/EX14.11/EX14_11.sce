// Example14.11  // Design a video amplifier of IC 1550 circuit
clc;
clear;
close;
Vcc = 12 ; // V
Av = -10 ;
Vagc = 0 ; // at bandwidth of 20 MHz
hfe = 50 ; // forward emitter parameter
rbb = 25 ;  // ohm  // base resistor
Cs = 1*10^-12 ;  // F  // source capacitor
Cl = 1*10^-12 ;  // F  // load capacitor
Ie1 = 1*10^-3 ; // A // emitter current of Q1
f = 1000*10^6 ; // Hz
Vt = 52*10^-3 ;
Vt1 = 0.026 ;

// When Vagc =0 the transistor Q2 is cut-off and the collector current of transistor Q2 flow through the transistor Q3
// i.e Ic1=Ie1=Ie3
Ie3 = 1*10^-3 ; // A // emitter current of Q3
Ic1 = 1*10^-3 ;  // A  // collector current of the transistor Q1

// it indicates that the emitter current of Q2 is zero Ie2 = 0 then the emitter resistor of Q2 is infinite
re2 = %inf ;

// emitter resistor of Q3 
re3 = (Vt/Ie1);
disp('The emitter resistor of Q3 is = '+string(re3)+' ohm ');

// the trans conductance of transistor is
gm = (Ie1/Vt1);
disp('The trans conductance of transistor is = '+string(gm)+' A/V ');

// the base emitter resistor rbe
rbe = (hfe/gm);
disp('The base emitter resistor rbe is = '+string(rbe)+' ohm ');

// the emitter capacitor Ce 
Ce = (gm/(2*%pi*f));
disp('The emitter capacitor is = '+string(Ce)+' F ');

// the voltage gain of video amplifier is
// Av = (Vo/Vin) ;
// Av = -((alpha3*gm)/(rbb*re3)*((1/rbb)+(1/rbe)+sCe)*((1/re2)+(1/re3)+sC3)*((1/Rl)+(s(Cs+Cl)))) 
 // At Avgc = 0 i.e s=0 in the above Av equation
alpha3 = 1 ;
s = 0 ;
Av =-10 ;
Rl = -((alpha3*gm)/((rbb*re3)*(((1/rbb)+(1/rbe))*((1/re2)+(1/re3))*(Av)))); 
Rl = (1/Rl);
disp('The value of resistance RL is = '+string(Rl)+' ohm ');

// there are three poles present in the transfer function of video amplifier each pole generate one 3-db frequency 
Rl = 265
fa = 1/(2*%pi*Rl*(Cs));
disp('The pole frequency fa is = '+string(fa)+' Hz ');


fb = 1/(2*%pi*Ce*((rbb*rbe)/(rbb+rbe)));
disp('The pole frequency fb is = '+string(fb)+' Hz ');

fc = 1/(2*%pi*Cs*re3);
disp('The pole frequency fc is = '+string(fc)+' Hz ');

disp(' Hence fa is a dominant pole frequency ');

