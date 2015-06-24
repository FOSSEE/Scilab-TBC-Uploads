//chapter15
//example15.11
//page333

T_Jmax=90 // degree celcius
T_amb=30 // degree celcius

//case 1 : without heat sink
theta1=300 // degree celcius per watt
P_total1=(T_Jmax-T_amb)/theta1

//case 2 : with heat sink
theta2=60 // degree celcius per watt
P_total2=(T_Jmax-T_amb)/theta2

printf("case 1 : without heat sink \n   maximum power dissipation = %.3f mW \n",P_total1*1000)
printf("case 2 : with heat sink \n   maximum power dissipation = %.3f mW \n",P_total2*1000)
