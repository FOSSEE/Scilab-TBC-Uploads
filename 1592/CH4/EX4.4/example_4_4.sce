//Scilab Code for Example 4.4 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
//X(f)=A*T/1+j*2*pi*f*T
syms f w;
A=1;
T=1;
X=(A^2*T^2)/(1+4*%pi^2*f^2*T^2)
disp('Putting f = tan @');
disp('Total Energy:');
Ex=integrate('(A^2*T)/(2*%pi)','w',-%pi/2,%pi/2)
disp('Energy Contained in the Output Signal');
Ey=integrate('(A^2*T)/(2*%pi)','w',-%pi/4,%pi/4)
e=Ey*100/Ex;
disp(e,'Percentage Energy Contained in the Output:');
