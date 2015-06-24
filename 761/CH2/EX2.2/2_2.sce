clc;
//page no 62
// prob no. 2.2
// Given : Hartley oscillators L=10uH; C=100pF
L=10*10^-6; C=100*10^-12;N1=10;N2=100
// A)The operating frequency is 
fo=1/(2*%pi*sqrt(L*C));
disp('Hz',fo,'1)The operating frequency is');
// The feedback fraction is given by
B=-N1/N2;
//Operating gain is given as 
A=1/B;
disp(A,'2)Operating gain');
disp('The -ve sign denotes a phase inversion');
//B) The operating frequency is same as in part A)
N1=20;N2=80;
// The feedback fraction is given by
B=(N1+N2)/N1;
//Operating gain is given as 
A=1/B;
disp(A,'3)Operating gain');