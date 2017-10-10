//Ex2.7.6
//calculation of source current connected in parallel.
clc;
clear;
//given
Io=10*10^-9;//reverse saturation current for diode1 and diode2
V=0.2;// assuming
T=25;//temp in celsius
T=T+273;//temp in kelvin
n=1.1;//n is emission coefficient
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
//diode current equation I=Ioexp(V/n*Vt-1)
I1=Io*(exp(V/(n*Vt))-1);
disp('uA',I1*10^6,'current across diode1 is ;')
I2=Io*(exp(V/(n*Vt))-1);
disp('uA',I2*10^6,'current across diode2 is ;')
I=I1+I2;//total current
disp( 'uA',I*10^6,'total current on diode1 and diode2 or source current is :')

