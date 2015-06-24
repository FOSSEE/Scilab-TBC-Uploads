clc
clear
//Input data
P1=1.03;//Pressure at the beginning of compression stroke in bar
T1=303;//Initial temperature in K
P2=40;//Maximum pressure in the cycle in bar
Q=550;//The heat supplied during the cycle in kJ/kg
r=1.4;//Isentropic compression ratio
Cp=1.004;//Specific heat at constant pressure in kJ/kg K

//Calculations
r1=(P2/P1)^(1/r);//Compression ratio
T2=(P2/P1)^((r-1)/r)*T1;//Temperature at the end of compression stroke in K
T3=(Q/Cp)+T2;//Temperature at the end of heat addition in K
rho=T3/T2;//Cut off ratio
n=(1-(1/r1^(r-1))*(1/r)*(rho^r-1)/(rho-1))*100;//Air standard efficiency in percentage

//Output\n
printf('(a)Compression ratio is %3.2f \n (b)Temperature at the end of compression is %3.1f K\n (c)Temperature at the end of comstant pressure heat addition is %3.0f K \n (d)Air standard efficiency is %3.2f percent',r1,T2,T3,n)
