//Example 2.6.5:magnitude and limiting error
clc;
clear;
close;
format('v',10)
r1=120;//in ohms
er1=0.1;//limiting error in resistance 1 in ohms ±
r2=2700;//in ohms
er2=0.5;//limiting error in resistance 2 in ohms ±
r3=470;//in ohms
er3=0.5;//limiting error in resistance 3 in ohms ±
rxm=(r2*r3)/r1;//magnitude of unknown resistance in ohms
rxe=(er1+er2+er3);//error
er=(rxe*rxm)/100;//relative error ±
disp(rxm*10^-3,"magnitude of unknown resistance in kilo ohms")
disp(er,"relative limiting error in ohms is (±)")
disp("guranteed value of resistance is between "+string(rxm-er)+" ohms to "+string(rxm+er)+" ohms ")
