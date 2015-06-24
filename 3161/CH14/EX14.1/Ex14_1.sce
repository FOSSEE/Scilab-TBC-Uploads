clc;
//page 738
//problem 14.1

//Boltzman constant  k = 1.3806488 × 10-23 m2 kg s-2 K-1
k = 1.3806488 * 10^-23; 

//Let room temperature be 27 C
T = 27 + 273; 

//Bandwidth BW = 10 MHz
BW = 10 * 10 ^6;

//For (a)
//Let the equivalent resistance be Ra
Ra = 10 + 10;

//RMS Noise Voltage be Va
Va = (4*k*T*Ra*BW)^0.5;

disp('The rms voltage at output a is '+string(Va)+' Volt');

//For (b)
//Let the equivalent resistance be Rb
Rb = (10 * 10)/(10+10);

//RMS Noise Voltage be Vb
Vb = (4*k*T*Rb*BW)^0.5;

disp('The rms voltage at output b is '+string(Vb)+' Volt');

//For (c)

Rc = 10;
C = 1*10^-9;

//In the textbook, the author has forgotten to multiply the result with T, hence has obtained an erroneous result.
//The given answer is 28.01uV but the correct answer is found out to be 1.2uV

Vc_square = 2*k*integrate('Rc/(1 + (2*%pi*Rc*C*f)^2)','f',-10^7,10^7);
Vc = Vc_square^0.5;

disp('The rms voltage at output c is '+string(Vc)+' Volt');





