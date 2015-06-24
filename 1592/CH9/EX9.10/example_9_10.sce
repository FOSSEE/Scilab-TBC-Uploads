//Scilab Code for Example 9.10 of Signals and systems by
//P.Ramakrishna Rao
//Maximum Value of Auto-Correlation Function
clc;
clear;
disp('Maximum Value of ACF=Rxx(0)');
x=200*integrate('exp(-2*t)','t',0,1000);
disp(x,'Energy in x(t)=');
