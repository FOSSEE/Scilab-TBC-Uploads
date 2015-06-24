clc
clear
//Input data
P1=1;//Initial pressure of an enfine working on a dual combustion cycle in bar
T1=318;//Initial temperature before compression in K
r1=14;//Compression ratio
r=1.4;//Isentropic index
a=2;//Pressure ratio in the compression process
rho=2;//Cut off ratio 

//Calculations
T2=T1*r1^(r-1);//Temperature at the end of compression stroke in K
T3=T2*a;//Temperature at the end of constant volume heat addition in K
T4=rho*T3;//Temperature at the end of constant pressure heat addition in K
T5=T4*(rho/r1)^(r-1);//Temperature at the end of isentropic compression in K
n=(1-((T5-T1)/(r*(T4-T3)+(T3-T2))))*100;//Efficiency of an engine working on a dual combustion cycle in percent

//Output
printf('(a)Temperature at the end of compression stroke is %3.0f K\n (b)Temperature at the end of constant volume heat addition is %3.0f K\n (c)Temperature at the end of constant pressure heat addition is %3.0f K\n (d)Temperature at the end of isentropic expansion process is %3.0f K\n (e)Efficiency of the cycle is %3.2f percent',T2,T3,T4,T5,n)
