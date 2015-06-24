//Caption:Calculate output voltage for (a)10V and 1ms Pw (b)10V and 2ms PW (c)20V and 1ms PW
//Ex2.10
clc;
clear;
close;
e1=10//Voltage applied(in volts)
e0=0//Voltage at t=0sec(in volts)
t1=1//PW(in ms)
t2=2//PW(in ms)
e2=20//Input voltage(in volts)
r=10//Resistance(in kilo ohm)
c=20//Capacitance(in micro farad)
eo1=(e1-((e1-e0)*(2.718)^(-t1/(r*c))))*1000
eo2=(e1-((e1-e0)*(2.718)^(-t2/(r*c))))*1000
eo3=(e2-((e2-e0)*(2.718)^(-t1/(r*c))))*1000
disp(eo3,eo2,eo1,'Output voltage for(a)(in mv),(b)(in mv),(c)(in mv)=')