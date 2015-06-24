//Chapter 10_Special Purpose Amplifiers
//Caption : LM4250 Parameters
//Example10.8: The micropower programmable Op-Amp LM 4250 is supplied by 3 v sourse(absolute value) source.Determine the value of set resistor for Iset=0.1 uA if Rset is connected to (a)Vee and (b)ground. (c)determine the quiescent supply current and the quiescent power dissipation.
clear;
clc;
//a)Solution:
Vcc=3;//power supply in Volt
Vee=-Vcc;//negative power supply in Volt
Iset=0.1*10^-6;//bias setting current in A;
Rset=(Vcc+abs(Vee)-0.5)/Iset;
disp('mega Ohm',Rset/10^6,'The bias setting current resistor for Vee=-10 V is:')
//b)Solution:
clear Vee;
Vee=0;//since Rset is connected to ground
Rset=(Vcc+abs(Vee)-0.5)/Iset;
disp('mega Ohm',Rset/10^6,'The bias setting current resistor for Vee=0 V is:')
//c)Solution:
Qcurrent=5*Iset;
Qpower=(Vcc+3)*Qcurrent;//where abs(Vee)=3 V 
disp('uA',Qcurrent*10^6,'The quiescent current supply is:')
disp('uW',Qpower*10^6,'The quiescent power dissipated is:')