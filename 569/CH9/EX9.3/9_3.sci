//Calculate Pressure head
clc;
df=1*10^3;
dm=13.56*10^3;
g=9.81;
h=130*10^-3;
P=g*h*(dm-df);
Ph=P/9.81;
disp(Ph,'Pressure head(mm of water)')
