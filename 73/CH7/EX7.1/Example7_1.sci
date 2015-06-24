//Chapter 7_Operational Amplifier Characteristics
//Caption : Bipolar Differential Amplifier Parameter
//Example7.1: The following specification are given for the dual input,balanced output bipolar diferential amplifier:
//Rc=2.2 kOhm,Re=4/7kOhm,Rs=50 ohm,Vcc=10V,Vee=-10V and Bf=Bo=100. Assume      Vbe=0.7V.
//Determine
//a)Icq and Vceq
//b)Differential-mode voltage fgain , and
//c)Input and output resistances.
clear;
clc;
//a)Solution:\
Rc=2.2*10^3;// collector resistance in one transistor in ohm
Re=4.7*10^3;// emitte resitance of one transistor in ohm
Rs=50;//base or source resitance of one transistor in ohm
Vcc=10;// collector power supply in Volt
Vee=-10;// negative emitter power supply
Bf=100;// gain of the transistor
Bo=Bf;
Vbe=0.7;//base emitter voltage of one transiator
Icq=(abs(Vee)-Vbe)/(2*Re+(Rs/Bf));
Vceq=Vcc+Vbe-Rc*Icq;
//b)Solution:
gm=Icq/(25*10^-3);// where transconductance gm=Ic/Vt, Vt=25mV at room temperature, so  gm =Ic/25
Ad=-gm*Rc;// differential mode voltage gain Icq here will be taken as found above  not approximated to as given book
//c)Solution:
r=Bo/gm;// input resistance of one transistor
Ri=2*r;//differential mode input resistance
Ro=Rc;//differential mode output resistance
disp('A',Icq*10^3,'operating point collector current')
disp('V',Vceq,'collector-to-emitter voltage is:')
disp(abs(Ad),'Differential-mode voltage gain')
disp('kilo Ohm',Ri/10^3,'Input Resistance')
disp('kilo Ohm',Ro/10^3,'Output Resistance')
// Note:
//value of  Icq is taken as 0.0009893 A or 0.9893 mA not approximated to 0.98 mA