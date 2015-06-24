clc
clear
//Input data
T1=300;//The maximum temperature at which carnot cycle operates in K
T2=250;//The minimum temperature at which carnot cycle operates in K

//Calculations
COPr=T2/(T1-T2);//COP of the refrigerating machine
COPh=T1/(T1-T2)//COP of heat pump
n=((T1-T2)/T1)*100;//COP or efficiency of the heat engine in percentage

//Output data
printf('(a)COP of the machine when it is operated as a refrigerating machine is %3.2f\n (b)COP when it is operated as heat pump is %3.2f\n (c)COP or efficiency of the Heat engine is %3.2f percent',COPr,COPh,n)
