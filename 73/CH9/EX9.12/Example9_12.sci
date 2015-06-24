//Chapter 9_Active Filters
//Caption : Unity gain frequency and Capacitor determination
//Example9.12: a)Determine the unity gain frequency,Fo,of a switched capacitor integrator having following specifications:Fclk=1 kHz, C1=1 pF,and C2=15.9 pF
//b)What is the value of capacitor for an RC integrator having R=1.6 mega Ohm and Fo as obtained in part(a).
//a)Solution:
clear;
clc;
C1=1*10^-12;//source capacitor in F
C2=15.9*10^-12;//feedback capacitor
Fclk=1*10^3;//clock frequency or switching frequency
Fo=1*(C1/C2)*Fclk/(2*%pi);
disp('Hz',Fo,'unity gain frequency is:')
//b)Solution:
R=1.6*10^6;//resistor of RC integrator in Ohm
C=1/(2*%pi*Fo*R);
disp('nF',C*10^9,'for Rc integrator value of capacitor needed is:')
// Note:
// Obtained results are approximated to nearest values,thus Fo=10 Hz and C=10 nF