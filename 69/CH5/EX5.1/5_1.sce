clear; clc; close;

Vt=26*(10^(-3)); //thermal voltage=26mV
Vi=3*(10^(-3));
Ie=4*(10^(-3));;	//emitter current=4mV
alpha=0.991; //common base amplification factor
Rl=610;        //Load Resistance(in ohms)

//Part-1 -> Determinig input impedance
re = Vt/Ie;
disp(re,'Input impedance(ohms) :');

//Part-2 -> Calculating the voltage gain
Ii = (Vi/re);    
Ie = Ii;
Ic=alpha*Ie;         
Vo=Ic*Rl;    
Av = Vo/Vi;
disp(Av,"Voltage gain :");

//Part-3 -> Calculating the output impedance and current gain
disp(%inf,"The output impedance(ohms) is :");
Ai = -Ic/Ie;
disp(Ai,"Current gain is :");


