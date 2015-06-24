clc;
//page no 481
//prob no. 14.10
//A Tx deliver 100W to antenna through 45m coaxial cable  with loss=4dB/100m
loss=4/100;L=45;Pout=100;
loss_dB=L*loss;//Determination of loss in dB
Pin_Pout=10^(loss_dB/10);
//Determination of Tx power
Pin=Pout*Pin_Pout;
disp('W',Pin,'The transmitter power must be');