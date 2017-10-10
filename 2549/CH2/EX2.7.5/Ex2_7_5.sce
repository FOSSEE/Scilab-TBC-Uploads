//Ex2.7.5
//calculation of voltage across diode connected in parallel.
clc;
clear;
//given
Io1=1*10^-12;//reverse saturation current for diode1
Io2=1*10^-10;//reverse saturation current for diode2
I=2*10^-3;//total current 
//room temperature
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=1//n is emission coefficient
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T

//diode current equation If=Ioexp(V/n*Vt-1)
//arranging diode eq for I=I1+I2 and getting exp for V
V=n*Vt*log(I/(Io1+Io2));
disp( 'volt',V,'voltage across diode connected in parallel is :')

