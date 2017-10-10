// To determine the auto tranformer ratio and starting torque

clc;
clear;

V=400;
f=50;
p=4;
sfl=4/100;

Ria=2.5; // Ratio of starting current to full load current (Auto transformer)
Rir=4; // Ratio of starting current to full load current ( For the Rated Voltage)

x=sqrt(Ria/Rir);

Rt=((x*Rir)^2)*sfl; // Ratio of starting torque to full load torque;

printf('The auto-transformer ratio = %g \n',x)
printf('The starting torque at the above transformer ratio = %g percent of full load torque \n',100*Rt)
