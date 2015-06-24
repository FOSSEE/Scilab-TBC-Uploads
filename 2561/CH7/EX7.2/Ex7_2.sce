//Ex7_2
clc
A=10000
disp("A= "+string(A)) //Amplifier gain
B=0.01
disp("B= "+string(B)) //Feedback factor
Af=[A/(1+A*B)]
disp("Af= [A/(1+A*B)]="+string(Af)) //Feedback gain
A1=100000
disp("A1= "+string(A1)) //New amplifier gain value
Af1=[A1/(1+A1*B)]
disp("Af1= [A1/(1+A1*B)]="+string(Af1)) //New feedback gain
