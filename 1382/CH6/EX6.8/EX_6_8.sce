// Example 6.8;// GAIN,INPUT VOLTAGE AND OUTPUT VOLTAGE
clc;
clear;
close;
Vs=10;//output voltage in milli volts
Vi= 0.01;//input voltage in volts
A=200;//amplifier gain without feedback
D=0.1;//distortion without feedback
Df=0.01;//distortion with feedback
Beta=( (D/Df)-1)/A;// feedback ratio
fop= (Beta*100);//percentage of output voltage which is fedback to the input is 
Af= (A/(1+(Beta*A)));//GAIN WITH FEEDBACL
Vo= Af*Vs*10^-3;//new output volate in volts
Vin= (Vi +(-Beta*Vo))*10^3;//new input voltage in milli volts
disp(Af,"gain with feedback  is")
disp(Vo,"new output volate in volts")
disp(Vin,"new input voltage in milli volts is")
