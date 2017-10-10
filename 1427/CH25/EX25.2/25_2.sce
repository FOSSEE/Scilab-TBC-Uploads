//ques-25.2
//Determining molecular weight of a gas
clc
m1=0.184;//mass of H2 given (in g)
M1=2;//molar mass of H2 (in g/mol)
m2=3.7;//mass of another gas (in g)
T1=273+17;//temperature for H2 (in K)
T2=273+25;//temperature for the gas (in K)
M2=(m2*T2*M1)/(m1*T1);
printf("The molar mass of the given gas is %.2f g/mol.",M2);
