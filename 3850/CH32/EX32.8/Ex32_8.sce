
//Find the Reading of the Ammeter

//Example 32.8

clear;

clc;

R1=140.8;//Given resistance

RA=480;//Reactance of the Coil

Rsh=20;//Shunt resistance

Req=RA*Rsh/(RA+Rsh);//Equivalent resistance of the ammeter

Reqc=R1+Req;//Equivalent resistance of the circuit

I=Rsh/Reqc;//current goes through the ammeter

printf("Reading of the Ammeter is = %f A",I);
