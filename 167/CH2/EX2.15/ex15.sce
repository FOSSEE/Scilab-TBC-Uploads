//example 15
//cost of cooking with electric and gas charges
clear
clc
e1=73 //efficiency of open burner for electric units
e2=38 //efficiency of open burner for gas units
E1=2 //Electrical energy input in 2kW
q1=E1*e1/100 //actually utilised electrical energy in kWh
c=0.09/0.73 //cost of utilised energy per kWh
q2=q1/(e2/100) //energy input to a gas burner in kW
c=(0.55/29.3)/(e2/100) //cost of utilised energy of gas burner
printf("\n Hence,rate of energy consumption by the burner is = %.2f kW. \n",q2);
printf("\n The cost of utilised energy is = $ %.3f /kWh. \n",c);