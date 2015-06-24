//Calculation of mechanical efficiency
clc,clear
//Given:
bp=100 //Brake power at full load in kW
fp=25 //Frictional power in kW (printing error)
//Solution:
eta_m=bp/(bp+fp) //Mechanical efficiency at full load
//(a)At half load
bp=bp/2 //Brake power at half load in kW
eta_m1=bp/(bp+fp) //Mechanical efficiency at half load
//(b)At quarter load
bp=bp/2 //Brake power at quarter load in kW
eta_m2=bp/(bp+fp) //Mechanical efficiency at quarter load
//Results:
printf("\n The mechanical efficiency at full load, eta_m = %d percent",eta_m*100)
printf("\n The mechanical efficiency,\n (a)At half load, eta_m = %.1f percent\n (b)At quarter load, eta_m = %d percent\n\n",eta_m1*100,eta_m2*100)
//Data in the book is printed wrong
