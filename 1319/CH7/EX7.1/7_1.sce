//Power delivered to 3 phase synchronous motor 

clc;
clear;

Vl=2300;
Il=8.8;
pf=0.8// Lead Power Factor
theta=acosd(pf)

P=sqrt(3)*Vl*Il; // Power delivered by the pump

I=P/(sqrt(3)*Vl*pf); // Increase in Current

Pr=sqrt(3)*Vl*I*sind(theta); // kVAr supplied

printf('The Power delivered by the pump = %g kW \n',P/1000)
printf('The Rheostat should be decreased such that the ammeter reads %g A \n',I)
printf('The kVAr supplied by the motor = %g kVAr',Pr/1000)
