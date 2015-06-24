//Caption: Nquist Rate
//Example 3.4 
//page no 105
//Find Nquist Rate of Continous signal
//given
clc;
clear;

w1=50*%pi;
w2=300*%pi;
w3=100*%pi;
f1=w1/(2*%pi);
f2=w2/(2*%pi);
f3=w3/(2*%pi);
fmax=f2;//fmax = Highest frquency component of the message signal
disp("Highest frquency component of the message signal will be");
disp(fmax,"fmax=");
disp(" Hz");
fs=2*fmax;//Nyquist rate
disp("Nquist Rate of the given Signal is");
disp(" Hz",fs);
