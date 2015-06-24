// Calculate the natural  frequency 
clc;
wn=2*%pi*30;
disp( 'for a frequency of 30 Hz  wn=(K/M+5*10^-3)^0.5.........(i)');
disp('But wn=(K/M)^0.5.........(ii)');
disp('for a frequency of 25 Hz  wn=(K/M+5*10^-3+5*10^-3)^0.5.........(iii) ')
disp('on solving (i), (ii) and (iii)')
M=6.36*10^-3;
K=403.6;
disp(M,'M=')
disp(K,'K=')
wn=(K/M)^0.5;
f=wn/(2*%pi);
disp(f,'natural frequency (Hz)')
