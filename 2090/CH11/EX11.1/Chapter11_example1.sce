clc
clear
//Input data
nsc=75;//The scavenging efficiency of the two stroke engine in percent 
ns=20;//The scavenging efficiency is increased by in percent

//Calculations
Rsc=log(1/(1-(nsc/100)));//The scavenging ratio for normal efficiency
nsc1=(nsc/100)+((nsc/100)*(ns/100));//For 20% increase in scavenging efficiency 
Rsc1=log(1/(1-(nsc1)));//The scavenging ratio for 20% more efficiency
Rscr=[(Rsc1-Rsc)/Rsc]*100;//Percentage increase in scavenging ratio in persent

//Output
printf('The percentage change in the scavenging ratio = %3.1f percent ',Rscr)

