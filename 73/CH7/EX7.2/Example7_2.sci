//Chapter 7_Operational Amplifier Characteristics
//Caption : Rc and Re
//Example7.2: A bipolar differentail amplifier uses a transistor having Bo=200 and biased at Icq=100 uA. Determine Rc and Re so that abs(Ad)=500 and CMRR=80 dB.
// Solution:
clear;
clc;
//CMRR in dB is expressed as 20logCMRR, so 80=20logCMRR or 
CMRR=10^(80/20);
Icq=100*10^-6;//collector current
Vt=25*10^-3;//standard value of threshold voltage at room temperature
gm=Icq/Vt;
Re=CMRR/(2*gm);//since CMRR=2*gm*Re(approx)
Ad=500;// absolute value of differential mode voltage gain
Rc=-Ad/gm;//Collector resistance
disp('Mega Ohm',Re/10^6,'emitter resitance(Re) of bipolar differential amplifier is:')
disp('Kilo Ohm',abs(Rc)/10^3,'collector resistance(Rc) of bipolar differential amplifier is:') 