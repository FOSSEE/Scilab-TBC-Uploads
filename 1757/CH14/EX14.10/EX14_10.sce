
// Example14.10  // Design a video amplifier of IC 1550 circuit
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
disp('The emitter resistor of Q3 is = '+string(re3)+' ohm ( at temperature 25 degree celsius) ');

// the trans conductance of transistor is
gm = (Ie1/Vt1);
disp('The trans conductance of transistor is = '+string(gm*1000)+' mA/V ');  // Round Off Error

// the base emitter resistor rbe
rbe = (hfe/gm);
disp('The base emitter resistor rbe is = '+string(rbe/1000)+' K ohm ');  // Round Off Error

// the emitter capacitor Ce 
Ce = (gm/(2*%pi*f));
disp('The emitter capacitor Ce = '+string(Ce)+' F ');  // Round Off Error

// the voltage gain of video amplifier is
// Av = (Vo/Vin) ;
// Av = -((alpha3*gm)/(rbb*re3)*((1/rbb)+(1/rbe)+sCe)*((1/re2)+(1/re3)+sC3)*((1/Rl)+(s(Cs+Cl)))) 
 // At Avgc = 0 i.e s=0 in the above Av equation
alpha3 = 1 ;
s = 0 ;
// Rl = -((alpha3*gm)/(rbb*re3)*(((1/rbb)+(1/rbe))*((1/re2)+(1/re3))*(Av))); 

// After solving above equation for Rl We get Rl Equation as
Rl = 10/(37.8*10^-3);
disp('The value of resistance RL is = '+string(Rl)+' ohm ');

// there are three poles present in the transfer function of video amplifier each pole generate one 3-db frequency 
Rl = 675 ;
// fa = 1/(2*%pi*Rl*(Cs+Cl));
// after putting value of Rl ,Cs and Cl we get
fa = 1/(2*3.14*264.55*1*10^-12);
disp('The pole frequency fa is = '+string(fa*10^-3/1000)+' M Hz '); // Round Off Error


//fb = 1/(2*%pi*Ce*((rbb*rbe)/(rbb+rbe)));
// after putting value of Ce rbb and rbe we get
fb = 1/(2*%pi*6.05*10^-12*24.5);
disp('The pole frequency fb is = '+string(fb*10^-3/1000)+' M Hz ');

fc = 1/(2*%pi*Cs*re3);
disp('The pole frequency fc is = '+string(fc*10^-3/1000)+' M Hz ');

disp(' Hence fa is a dominant pole frequency ');
