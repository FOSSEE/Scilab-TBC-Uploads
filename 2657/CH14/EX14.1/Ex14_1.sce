//Calculation of saving in fuel
clc,clear
//Given:
bp=80 //Brake power in kW
eta_m=80 //Mechanical efficiency in percent
bsfc=258 //Brake specific fuel consumption in gm/kWh
Reduction=3.7 //Reduction in friction power in kW
//Solution:
ip1=bp*100/eta_m //Initial indicated power in kW
fp1=ip1-bp //Initial friction power in kW
fp2=fp1-Reduction //Final friction power in kW
ip2=bp+fp2 //Final indicated power in kW
eta_m2=bp/ip2 //Final mechanical efficiency
bsfc2=bsfc*(eta_m/(100*eta_m2)) //Final brake specific fuel consumption in gm/kWh
Saving=bp*(bsfc-bsfc2)/1000 //Saving in fuel in kg/hr
//Results:
printf("\n (a)The new mechanical efficiency, eta_m = %.3f",eta_m2)
printf("\n (b)The new bsfc = %.1f gm/kWh",bsfc2)
printf("\n (c)The saving in fuel per hour = %.2f kg/hr\n\n",Saving)
//Answers in the book are wrong
