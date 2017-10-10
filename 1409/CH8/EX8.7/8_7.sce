clc;
//page no 8-27
//Example 8.7
//Given 
C=0.001*10^(-6);//in Farads
Rc=50*10^3;//in ohm
fm=1*10^3;//in Hz
//we know that Zm=Rc||C
//=1/sqrt((1/Rc^2)+(1/Xc^2))
//Xc=1/(2*%pi*f*C)
//Mmax=Zm/Rc=1/Rc*sqrt((1/Rc^2)+(1/(1/2*%pi*f*C)^2)) which gives
Mmax=1/sqrt(1+(2*%pi*fm*C*Rc)^2);
disp(Mmax,'Maximum modulation index for modulation frequency 1kHz is ');
fm2=5*10^3;//in Hz
Mmax1=1/sqrt(1+(2*%pi*fm2*C*Rc)^2);
disp(Mmax1,'Maximum modulation index for modulation frequency 5kHz is ');
