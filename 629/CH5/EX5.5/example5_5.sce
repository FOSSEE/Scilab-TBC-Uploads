clear
clc
//Example 5.5 RATE OF WATER RISE IN RESERVOIR
A=40; //area[mi^2]
Q1=400000; //discharge rate into the reservoir[ft^3/s]
Q2=250000; //outflow rate[cfs]
//mcv=mi-mo
//(rho*Q2)+(rho*Qrise)=rho*Q1
Qrise=Q1-Q2 //[cfs]
//1mi=5280ft, 1hr=3600sec
Vrise=Qrise*3600/(A*(5280)^2) //rise rate[ft/hr]
printf("\nThe rate of rise of water in the reservoir is %.3f ft/hr.\n",Vrise)