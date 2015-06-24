// Example 7.22:oscillation frequency 
clc;
clear;
close;
w=2*10^3;//in radiand per second
f= round(w/(2*%pi));//resonant frequency
X=(((16*10^9*4*w^2*10^3))/((4*w^2*10^3)^2));//
disp(f,"resonant frequency in hertz")
disp(X,"oscillations are sustained")
