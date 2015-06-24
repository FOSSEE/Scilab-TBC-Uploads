clc
//Chapter 5:High Frequency amplifiers and automatic gain control
//Example 5.14 page no 189
//Example on voltage to current feedback
gm=0.4//transconductance
RL=600//load resistance
Rs=500//source resistance (refer figure 5.54)
disp('Av=-gm*RL/(1+gf*RL+gm*RL*(Rs/RF))')//Voltage gain 
disp('GB=Av*B')
disp('The gain bandwidth product varies from a low of 59.5*10^6 Hz for a gain of unity 265.1*10^6 Hz for a closed loop gain of 17.9 ')//(refer figure 5.55)
