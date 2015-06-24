//Caption: Nquist Rate
//Example 3.1 
//page no 102
//find Nquist Rate
//given 
clc;
clear;
w1=50*%pi;
w2=300*%pi;
w3=100*%pi;
//w=2*%pi*f
f1=w1/(2*%pi);
f2=w2/(2*%pi);
f3=w3/(2*%pi);
fm=f2;//fm = maximum frquency is present at the signal
disp(f2,"maximum frquency of the signal is");
disp(" Hz");
fs=2*fm;//Nyquist rate
disp("Nquist Rate of Signal is");
disp(" Hz",fs);

