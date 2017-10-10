clc;
//page no 5-23
//Example 5.12
//Given s(t)=10*sin[(5.7*10^8*t)+5*sin(12*10^3*t)]
//Comparing it with standard FM: s(t)= Ac(wc*t+beta*sin(wm*t))
Ac=10;
wc=5.7*10^8;
wm=12*10^3;
beta1=5;
fc=(wc/(2*%pi))*10^(-6);
disp(+'MHz',fc,'Carrier frequency=');
fm=(wm/(2*%pi))*10^(-3);
disp(+'kHz',fm,'Modulating frequency=');
disp(beta1,'Modulation index=');
fd=beta1*fm;
disp(+'kHz',fd,'Frequency deviation=');
R=100;//in ohms
p=[(Ac/sqrt(2))^2]/R;
disp(+'W',p,'Power dissipated=');
