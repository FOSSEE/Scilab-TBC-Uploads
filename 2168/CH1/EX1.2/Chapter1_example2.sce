clc
clear
//Data taken from Ex.No.1
BHP=51//Brake horse power in h.p
N=1000//Speed in r.p.m
FHP=17//Friction horse power in h.p
//Input data
O1=BHP/2//Half of b.h.p output in h.p
O2=10//Brake horse power in h.p

//Calculations
//Case(i)
IHP1=(O1+FHP)//Indicated Horse power in h.p
mn1=(O1/IHP1)*100//Mechanical efficiency in percent

//Case(ii)
IHP2=(O2+FHP)//Indicated Horse power in h.p
mn2=(O2/IHP2)*100//Mechanical efficiency in percent


//Output
printf('Mechanical efficiency of the engine when it delivers \n (a) Half the b.h.p output is %3.0f percent \n (b) 10 b.h.p is %3.0f percent',mn1,mn2)
