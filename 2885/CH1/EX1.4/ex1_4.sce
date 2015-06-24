
//Find percentage variation in load current and load voltage
clear;
clc;
//soltion
//given
Vs=10;//volt//Supply voltage
Rs=100;//ohm//internal resistance

// In accordance to figure 1.24a
//For 1Ω - 10 Ω
Rl11=1;//ohm//min extreme value of Rl
Rl12=10;//ohm//max extreme value of Rl
Il11=Vs/(Rs+Rl11);
Il12=Vs/(Rs+Rl12);
Pi1=(Il11-Il12)*100/Il11;//Percentage variation in current
Vl11=Il11*Rl11;
Vl12=Il12*Rl12;
Pv1=(Vl12-Vl11)*100/Vl12;//Percentage variation in voltage
printf("\nIn accordance to figure 1.24a \n");
printf("Percentage variation in Current(1-10 Ω) %.2f percent\n",Pi1);
printf("Percentage variation in Voltage(1-10 Ω) %.1f percent\n\n",Pv1);

// In accordance to figure 1.24b
//For 1kΩ - 10kΩ
Rl21=1000;//ohm//min extreme value of Rl
Rl22=10000;//ohm//max extreme value of Rl
Il21=Vs/(Rs+Rl21);
Il22=Vs/(Rs+Rl22);
Pi2=(Il21-Il22)*100/Il21;//Percentage variation in current
Vl21=Il21*Rl21;
Vl22=Il22*Rl22;
Pv2=(Vl22-Vl21)*100/Vl22;//Percentage variation in voltage
printf("\nIn accordance to figure 1.24b \n");
printf("Percentage variation in Current(1-10 Ω) %d percent \n",Pi2);
printf("Percentage variation in Voltage(1-10 Ω) %.1f percent \n\n",Pv2);
// In book the percentage variation in voltage(1kΩ-10kΩ) is 9 percent due to 
// the incorrect value of Il22 i.e. 0.000999 Amp correct value is 0.0009901 Amp
