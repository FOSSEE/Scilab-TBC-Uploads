clc
clear
//Input data
T1=315;//Temperature at the beginning of isentropic compression in K
T2=600;//Temperature at the end of isentropic compression in K
r=1.4;//Isentropic constant of air

//Calculations
r1=(T2/T1)^(1/(r-1));//Compression ratio
n=(1-(1/r1^(r-1)))*100;//Efficiency of Otto cycle in percent

//Output
printf('(a)The compression ratio is %3.2f\n (b)Efficiency of the Otto cycle is %3.1f percent',r1,n)
