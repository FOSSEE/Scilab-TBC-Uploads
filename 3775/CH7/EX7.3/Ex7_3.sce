//Ex 7.3 page 261

clc;
clear;
close;

N1=900;// rpm
Va1=198;// V
N2=500;// rpm
Vs=230;// V

Va2=Va1*N2/N1;// V
// 2*sqrt(2)*Vs*cos(alfa)/%pi=Va2
alfa=acos(Va2/(2*sqrt(2)*Vs)*%pi)*180/%pi;// degree

printf('\n triggering angle = %.1f degree',alfa)
