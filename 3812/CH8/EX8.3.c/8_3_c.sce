//Example 8_3 <c>
//determine whether the Nyquist criteria satisfy or not
//Ws>=2Wmax
//fs>=2fmax
clc;
clear all;
Ts=10^-4;
Wc=1000
Fs=1000
Ts_test=1/Fs;
if (Ts<=Ts_test) then
disp('Nyquist Criteria Satify')
else
disp('Nyquist Criteria NOT Satify ');
end
