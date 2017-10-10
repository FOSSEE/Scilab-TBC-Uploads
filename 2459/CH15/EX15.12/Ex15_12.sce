//chapter15
//example15.12
//page334

T_Jmax=200 // degree celcius
T_amb1=25 // degree celcius
T_amb2=75 // degree celcius
theta=20 // degree celcius per watt
Vcc=4 // V

P_total1=(T_Jmax-T_amb1)/theta
Ic1=P_total1/Vcc

P_total2=(T_Jmax-T_amb2)/theta
Ic2=P_total2/Vcc

printf("for ambient = 25 degree C, allowed collector current = %.3f A \n",Ic1)
printf("for ambient = 75 degree C, allowed collector current = %.3f A \n",Ic2)
