//Example 4.17: 
clc;
clear;
close;
//given data :
format('v',5)
A=200;//gain without feedback
Beta=0.05;//feed back ratio
Af=(A/(1+(Beta*A)));//gain with feedback
disp(Af," gain with negative feedback is ,=")
Dn=10;//percentage distortion
format('v',6)
Dn1=(Dn/(1+A*Beta));//percentage Distortion with negative feedback
ff=Beta*A;//feedback factor
vo=0.5;//initial output voltage
vi=A*vo;//in V
vin=vi/Af;//in V
disp(Dn1,"percentage Distortion with negative feedback is ,(%)=")
disp(vin,"new input voltage is ,(V)=")
//gain and input voltage are calculated wrong in the textbook   
