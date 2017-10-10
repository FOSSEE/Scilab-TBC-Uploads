//Example 21.3
R1=1;//Resistance of resistor 1 (ohm)
R2=6;//Resistance of resistor 2 (ohm)
R3=13;//Resistance of resistor 3 (ohm)
R_p=1/(1/R2+1/R3);//Equivalent resistance for parallel combination (ohm)
R_tot=R1+R_p;//Total resistance (ohm)
printf('a.Total resistance = %0.2f ohm',R_tot)
V=12;//Voltage (V)
I=V/R_tot;//Total current (A)
V1=I*R1;//Voltage drop in resistor R1 (V)
printf('\nb.Voltage drop in R1 = %0.2f V',V1)
V_p=V-V1;//Voltage across parallel combination (V)
I2=V_p/R2;//Current through resistor 2 (A)
printf('\nc.Current through R2 = %0.2f A',I2)
P2=I2^2*R2;//Power dissipated by resistor 2 (W)
printf('\nd.Power dissipated by R2 = %0.1f W',P2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
