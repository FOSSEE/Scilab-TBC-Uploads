clc;
// page no 135
// prob no 4_11_1
//An amplifier is given
Rn=300;//Equivalent noise resistance
Ieq=5*10^-6;//Equivalent noise current is 5 uA
Rs=150;//Amplifier fed from 150 ohm,10 uV rms sinusoidal source
Vs=10*10^-6;
Bn=10*10^6;//Noise BW is 10 MHz
//Assume the following
kT=4*10^-21;//k is Boltzman constant in J/K & T is room temp
q=1.6*10^-19;//Charge on electron in coulombs
//Determination of shot noise current
Ina=(2*q*Ieq*Bn)^(1/2);
disp('nA',Ina*(10^9)','The value of shot noise current Ina is ');
//Noise voltage developed by this across source resistance is 
V=Ina*Rs;
disp('uV',Vs*(10^6)','The value of noise voltage across Rs is ');
//Noise voltage developed across Rn resistance is
Vna=(4*Rn*kT*Bn)^(1/2);
disp('uV',Vna*(10^6)','The value of noise voltage across Rn is ');
//Determination of thermal noise voltage from source 
Vns=(4*Rs*kT*Bn)^(1/2);
disp('uV',Vns*(10^6)','The value of thermal noise voltage at Rs is');
//Determination of total noise voltage at input
Vn=(((V)^2)+((Vna)^2)+((Vns)^2))^(1/2)
disp('uV',Vn*(10^6)','The value of total noise voltage Vn is ');
//Determination of signal to noise ratio in dB
SNR=20*(log10(Vs/Vn));
disp('dB',SNR,'The value of signal to noise ratio is ');