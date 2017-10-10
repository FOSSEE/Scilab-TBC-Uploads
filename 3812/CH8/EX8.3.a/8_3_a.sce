//Example 8_3 <a>
//determine whether the Nyquist criteria satisfy or not
//Ws>=2Wmax
//fs>=2fmax
clc;
clear all;
Ts=0.5*10^-3;
Wc=1000
Fs=1000
Ts_test=1/Fs;
if (Ts<=Ts_test) then
disp('Nyquist Criteria Satify')
else
disp('Nyquist Criteria NOT Satify ');
end
