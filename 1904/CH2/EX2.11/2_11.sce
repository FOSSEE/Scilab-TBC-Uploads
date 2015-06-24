//To determine the Thirty min maximum diversified
//Page 62
clc;
clear;

printf('NOTE\n\n')
printf('The figure 1 attached along with this code is the Maximum diversified 30- min demand characteristics of various residential loads;\n  A = Clothes dryer; D = range; E = lighting and miscellaneous appliances; J = refrigerator\n (Only the loads required for this problem have been mentioned)\n \n')

Ndt=50; //Number of distribution transformers
Nr=900; //Number of residences

//When the loads are six.
PavMax6=[1.6,0.8,0.066,0.61]; //Average Maximum diversified demands (in kW) per house for dryer, range, refrigerator, for lighting and misc aapliances respectively according to the figure 1 attached with code. 

Mddt= sum(6*PavMax6); //30 min maximum diversified demand on the distribution transformer

//When the loads are 900.
PavMax900=[1.2,0.53,0.044,0.52]; ////Average Maximum diversified demands (in kW) per house for dryer, range, refreigerato, for lighting and misc aapliances respectively according to the figure 1 attached with code.

Mdf=sum(Nr*PavMax900); //30 min maximum diversified demand on the feeder

//From the figure 2 attached to this code
Hdd4=[0.38,0.24,0.9,0.32]; //Hourly variation factor at time 4 PM for dryer, range, refrigerator, lighting and misc appliances
Hdd5=[0.30,0.80,0.9,0.70]; //Hourly variation factor at time 5 PM for dryer, range, refrigerator, lighting and misc appliances
Hdd6=[0.22,1.0,0.9,0.92]; //Hourly variation factor at time 6 PM for dryer, range, refrigerator, lighting and misc appliances

Thdd4=(6*PavMax6)*Hdd4'; //Gives the total hourly diversified demand in kW at time 4 PM
Thdd5=(6*PavMax6)*Hdd5'; //Gives the total hourly diversified demand in kW at time 5 PM
Thdd6=(6*PavMax6)*Hdd6'; //Gives the total hourly diversified demand in kW at time 6 PM

printf(' a) The 30 min maximum diversified demand on the distribution transformer = %g kW\n',Mddt)
printf(' b) The 30 min maximum diversified demand on the distribution transformer = %g kW\n',Mdf)
printf(' c) The total hourly diversified demands at:\n')
printf(' i) 4.00 PM = %g kW\n',Thdd4)
printf(' ii) 5.00 PM = %g kW\n',Thdd5)
printf(' iii) 6.00 PM = %g kW\n',Thdd6)
