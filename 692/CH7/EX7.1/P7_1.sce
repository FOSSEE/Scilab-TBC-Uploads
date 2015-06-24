//EXAMPLE 7.1
//PROGRAM REQUIRES MAXIMA SCILAB TOOLBOX

clc;
clear;
syms K a z w;

hzden = (1-a*(z^-1)); //0<|a|<1;
Hz = K/hzden;
disp('|H(e^(jw))|^2 = K^2/((1+a)^2 - 2*cos(w)') ; 
// considering a>0
disp('(at w = %pi),K^2/(1+a)^2 < |H|^2  < K^2/(1-a)^2,(at w = 0)');
//considering a<0
disp(' (at w = 0),K^2/(1+a)^2 < |H|^2  < K^2/(1-a)^2,(at w = %pi)');
disp('if K = +/-(1-a), observe....');
disp('|H(e^(jw))|  <= 1     Hence a Bounded real function.');
//w=0:%pi;
//[a,b]=freq(hznum,hzden,w);
disp(abs(Hz))











