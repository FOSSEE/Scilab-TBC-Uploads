clc
clear

//input
r=10;//resistacne of an acceptor circuit in ohms
l=0.08;//inductance of an acceptor circuit in henry
c=1250*(10^-12);//capacitance of an acceptor circuit in faraf
v=1.5;//supply voltage in volts
//average power dissipated in not less tha half of power at resonance

//calcultions
i=v/r;//current in amperes
p=i*i*r;//power in watts
pmin=p*0.5;//minimum average power in watts
i1=pmin/r;//current in amperes
z1=v/i1;//impedance in ohms
x=((z1^2)-(r^2))^0.5;//effective reactance in ohms
//on equating xc and xl we get equation for frequency as -(502*(10^-6))(f^2)-10f+127.2(10^6)=0
a= -502*(10^-6);//from the above equation
b= -10;//from the above equation
c=127.2*(10^6);//from the above equation
f2=(((b-(((b^2)-(4*a*c))^0.5))/(2*a)))/1000;//upper frequency in hertz
f1=((((-b)-(((b^2)-(4*a*c))^0.5))/(2*a)))/1000;//lower frequency in hertz

//output
mprintf('the frequency range over which the average power doesnot fall below 0.5*the average power at resonance is %3.0f kHz and %3.0f kHz',f1,f2)
