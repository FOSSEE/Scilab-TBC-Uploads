//Finding of Power delivered
//Given
L=(588600-(588600*4)/100);
d=35;
l=5;
q=0.008;
t1=2.5*60;
rho=1000;
g=9.81;
//To Find
A=(%pi/4)*d^2;
P=L/A;
P1=P*10^4;
H=P1/(rho*g);
W1=q*1000*g*H;
W2=L*l/t1;
W3=W1+W2;
W4=W3/1000;
disp("Power Delivered ="+string(W4)+" Kilo Watts");
