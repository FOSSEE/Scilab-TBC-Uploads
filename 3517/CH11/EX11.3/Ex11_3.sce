//Caption:Determine output for given logic circuit
//Ex11.3
clc;
clear;
close;
A=1
B=0
C=1
D=1
c=A-1
n=c//Output of NOT gate
a=B*C*D//Output of AND gate
o=c+(B*C*D)//Output of OR gate
disp(o,'Output for given logic circuit is=')