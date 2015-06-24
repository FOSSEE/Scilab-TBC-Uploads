clc
//Chapter 5:High Frequency amplifiers and automatic gain control
//Example 5.15 page no 193
disp('Gain bandwidth product of a common base amplifier with lossless feedback ')
//All the Bandwidth values are taken by graph
m1=0//i.e. for no turns ratio 
Av1=1//for no turns ratio voltage gain is approx unity 
B1=79.4*10^6//bandwidth
GB1=Av1*B1//Gain bandwidth product
m2=4//i.e. for turns ratio is 4
Av2=m2/2//voltage gain
B2=11.22*10^6//bandwidth
GB2=Av2*B2//Gain bandwidth product
m3=6//i.e. for turns ratio is 6
Av3=m3/2//voltage gain 
B3=4.67*10^6//bandwidth
GB3=Av3*B3//Gain bandwidth product
m4=10//i.e. for turns ratio is 10
Av4=m4/2//voltage gain 
B4=1.6*10^6//bandwidth
GB4=Av4*B4//Gain bandwidth product
m5=20//i.e. for turns ratio is 20
Av5=m5/2//voltage gain 
B5=4.22*10^5//bandwidth
GB5=Av5*B5//Gain bandwidth product
disp('The Gain Bandwidth product in Hz')
mprintf('GB1 = %3.2e \n GB2 = %3.2e \n GB3 = %3.2e \n GB4 = %3.2e \n GB5 = %3.2e ',GB1,GB2,GB3,GB4,GB5)
