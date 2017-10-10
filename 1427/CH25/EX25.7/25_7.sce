//ques-25.7
//Calculating rms velocity of a gas and temperature required
clc
M1=16; M2=30;//molar masses of two gases (in g/mol)
T1=298;//temperature for 1st gas (in K)
Crms=sqrt((3*8.314*T1)/(M1/1000));
T2=(T1*M2)/M1;
printf("The rms velocity of the gas is %.2f m/s and temperature of 2nd gas is %.2f K.",Crms,T2);
