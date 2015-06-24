//Example 12.9
//Program to determine the viability of optical power budget

clear;
clc ;
close ;

//Given data
L=7;                      //km - OPTICAL FIBER LINK LENGTH
alpha_fc=2.6;             //dB/km - CABLE FIBER LOSS 
alpha_j=0.5;              //dB/km - SPLICE LOSS
alpha_cr=1.5;             //dB - TOTAL CONNECTOR LOSS
Ma=6;                     //dB - REQUIRED SAFETY MARGIN
Pr_dBm=-41;               //dBm - RECEIVER SENSITIVITY
Pi=100*10^(-6);           //Watt - POWER LAUNCHED
Pi_dBm=10*log10(Pi/10^(-3));

//Total System Margin
Total_system_margin=Pi_dBm-Pr_dBm;
printf("\n\n\t Total System Margin is %0.1f dB.",Total_system_margin);

//Total System Loss
Total_system_loss=L*alpha_fc+(L-1)*alpha_j+alpha_cr+Ma;
printf("\n\n\t Total System Loss is %0.1f dB.",Total_system_loss);

//Excess Power margin
Excess_power_margin=Total_system_margin-Total_system_loss;
printf("\n\n\t Excess Power margin is %0.1f dB.",Excess_power_margin);

//Testing Viability
if Excess_power_margin >=0 then
printf("\n\n\t The system is viable.");
else
printf("\n\n\t The system is not viable.");
end