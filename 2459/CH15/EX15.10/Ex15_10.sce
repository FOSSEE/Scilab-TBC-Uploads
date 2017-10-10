//chapter15
//example15.10
//page333

P_total=4 // W
T_Jmax=90 // degree celcius
theta=10 // degree celcius per watt

// P_total=(T_Jmax-Tamb)/theta so making Tamb as subject we get
Tamb=T_Jmax-P_total*theta

printf("maximum ambient temperature at which transistor can be operated = %.3f degree C \n",Tamb)
