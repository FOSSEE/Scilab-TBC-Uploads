// Exa 11.3
clc;
clear;
close;
format('v',6)
// Given data
P = 6;
f = 50;// in Hz
Snl = 1/100;
Sfl = 3/100;
N_S = (120*f)/P;// in rpm
disp(N_S,"The synchronous speed in rpm is");
Nnl = N_S*(1-Snl);// in rpm
disp(Nnl,"No load speed in rpm is");
Nfl = N_S*(1-Sfl);// in rpm.. correction 
disp(Nfl,"The full load speed in rpm is");
// frequency of rotor current 
s = 1;
Sf = s*f;// in Hz
disp(Sf,"The frequency of rotor current in Hz is");
// frequency of rotor current at full load 
f_r = Sfl * f;// in Hz
disp(f_r,"The frequency of rotor current at full load in Hz is");

// Note : The calculated value of Nnl is wrong and value of Nfl is correct but at last they printed wrong.
