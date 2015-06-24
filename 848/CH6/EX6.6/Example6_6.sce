//clear//
//Caption:Mean-square shot noise current, Mean-square dark current and Mean-Square thermal noise current
//Example6.6
//page 234
clear;
clc;
close;
Lambda = 1330e-09; //wavelength in meters
ID = 4e-09;//photodiode current
etta = 0.90;//quantum eficiency
RL = 1000; //Load resistance 1000 ohms
Pin = 300e-09; //incident optical power is 300 nano watts
Be = 20*(10^6); //receiver bandwidth 
q = 1.6*(10^-19); //charge in coulombs
h = 6.625*10^-34;//planks constant
v= (3*10^8)/Lambda; //frequency in Hz
Ip = (etta*q*Pin)/(h*v);//primary photocurrent
Ishot = 2*q*Ip*Be; //shot-noise current
Ishot = sqrt(Ishot);
IDB = 2*q*ID*Be; //dark current
IDB = sqrt(IDB);
T = 283; //room temperature in kelvin
KB = 1.38*10^-23; //boltzmann's constant 
RL = 1000; //load resistance
IT = (4*KB*T)*Be/RL;//Thermal noise current
IT = sqrt(IT);
disp(Ip*10^6,'primary photocurrent in uA IP =')
disp(Ishot*10^9,'mean-square shot noise current for a pin photodiode in nA Ishot =')
disp(IDB*10^9,'mean-square dark current in nA IDB=')
disp(IT*10^9,'mean-square thermal noise current for the receiver in nA IT =')
//Result
//primary photocurrent in uA IP =  0.2890868  
//mean-square shot noise current for a pin photodiode in nA Ishot =  1.3602042  
//mean-square dark current in nA IDB = 0.16  
//mean-square thermal noise current for the receiver in nA IT = 17.675746  
