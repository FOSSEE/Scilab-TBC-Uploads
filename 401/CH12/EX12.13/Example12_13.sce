//Example 12.13
//Program to:
//(a)Determine the viability of optical power budget
//(b)Estimate any possible increase in link length

clear;
clc ;
close ;

//Given data
L=2;                      //km - OPTICAL FIBER LINK LENGTH
alpha_fc=3.5;             //dB/km - CABLE FIBER LOSS 
alpha_j=0.7;              //dB/km - SPLICE LOSS
alpha_cr=1.6;             //dB - CONNECTOR LOSS AT RECEIVER
Ma=4;                     //dB - REQUIRED SAFETY MARGIN
Pr_dBm=-25;               //dBm - RECEIVER SENSITIVITY
Pi_dBm=-10;               //dBm - POWER LAUNCHED

//Total System Margin
Total_system_margin=Pi_dBm-Pr_dBm;
printf("\n\n\t (a)Total System Margin is %0.1f dB.",Total_system_margin);

//Total System Loss
Total_system_loss=L*alpha_fc+L*alpha_j+alpha_cr+Ma;
printf("\n\n\t    Total System Loss is %0.1f dB.",Total_system_loss);

//Excess Power margin
Excess_power_margin=Total_system_margin-Total_system_loss;
printf("\n\n\t    Excess Power margin is %0.1f dB.",Excess_power_margin);

//(a)Testing Viability
if Excess_power_margin >=0 then
printf("\n\n\t    The system is viable.");
else
printf("\n\n\t    The system is not viable.");
end

//(b)Maximum possible link length
Pi=0;                     //dBm - LAUNCHED POWER
Po=-25;                   //dBm - REQUIRED POWER BY APD
Ma=7;                     //dB - SAFETY MARGIN
//Optical budget: Pi-Po=(alpha_fc+alpha_j)L+alpha_cr+Ma
L1=(Pi-Po-alpha_cr-Ma)/(alpha_fc+alpha_j);
printf("\n\n\t (b)Maximum possible increase in link length is %0.1f km.",L1-L);