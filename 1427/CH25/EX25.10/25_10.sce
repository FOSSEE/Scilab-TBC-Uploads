//ques-25.10
//Calculating temperatures required for Carbon dioxide
clc
C=900;//velocity (in m/s)
M=44;//molar mass of CO2 (in g/mol)
T1=(C^2*%pi*M/1000)/(8*8.314);//Cavg
T2=(C^2*M/1000)/(2*8.314);//Cmp
printf("The required temperatures are %d K and %d K.",T1,T2);
