//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_7.sce
clc;
clear;
KVA=50e3;

printf("\n (a)")
PF=0.7;
iron_loss=430;             //primary power of transformer on open circuit test in watt is called iron loss
copper_loss_FL=525;              //primary power of transformer on short circuit test in watt is called copper loss
total_loss_FL=iron_loss+copper_loss_FL;
eta_FL=(KVA*PF)/((KVA*PF)+total_loss_FL)*100;                 //full load efficiency
printf("\n   Full load efficiency for 0.7 power factor=%2.2f percentage \n",eta_FL)
copper_loss_HL=(0.5^2)*copper_loss_FL;
total_loss_HL=iron_loss+copper_loss_HL;
eta_HL=(KVA*PF*0.5)/((KVA*0.5*PF)+total_loss_HL)*100;
printf("\n   Half load Efficiency  for 0.7 power factor=%2.2f percentage \n",eta_HL)

printf("\n (b)")
Vsc=124;                            //primary voltage on short circuit test in volts
Isc=15.3;                           //primary current on short circuit test in amphere
Psc=525;                           //primary power of transformer on open circuit test in watt
pi_e=acosd(Psc/(Vsc*Isc));
pi_2=acosd(PF);
Voc=3300;
voltage_regulation1=Vsc*cosd(pi_e-pi_2)/(Voc)*100;
printf("\n   The voltage regulation for 0.7 lagging power factor=%1.1f percentage \n",voltage_regulation1)
pi_2=-acosd(PF);
voltage_regulation2=Vsc*cosd(pi_e-pi_2)/(Voc)*100;
printf("\n   The voltage regulation for 0.7 leading power factor=%1.2f percentage \n",voltage_regulation2)

printf("\n (c)")
Voc=400;
decrease_in_voltage=voltage_regulation1*Voc/100;
Vs1=Voc-decrease_in_voltage;
increase_in_voltage=voltage_regulation2*Voc/100;
Vs2=Voc-increase_in_voltage;
printf("\n   The secondary terminal voltage corresponding to 0.7 pf lagging=%3.1f V \n",Vs1)
printf("\n   The secondary terminal voltage corresponding to 0.7 pf leading=%3.1f V \n",Vs2)
 
