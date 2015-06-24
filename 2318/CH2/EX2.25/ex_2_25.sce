//Example 2.25://mulitplying power
clc;
clear;
close;
format('v',9)
disp("when micro meter resistance is 25 ohm")
ra=25;//ohms
rsh=5000;//ohms
r1=1250;//ohms
n=((ra+rsh)/r1);//
r2=2500;//ohms
n2=((ra+rsh)/r2);//
disp(n,"multiplying power for the shunt for a 1250 ohm is")
disp(n2,"multiplying power for the shunt for a 2500 ohm is")
disp("when micro meter resistance is 2500 ohm")
ra1=2500;//ohms
rsh=5000;//ohms
r1=1250;//ohms
n1=((ra1+rsh)/r1);//
r2=2500;//ohms
n3=((ra1+rsh)/r2);//
disp(n1,"multiplying power for the shunt for a 1250 ohm is")
disp(n3,"multiplying power for the shunt for a 2500 ohm is")
