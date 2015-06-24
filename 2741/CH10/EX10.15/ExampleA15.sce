clc
clear
//Page number 476
//Input data 
w=100;//The given power of an engine in kW 
t1=117;//The operating temperature of an engine in degree centigrade 
t2=17;//The another operating temperature of an engine in degree centigrade 

//Calculations 
T1=t1+273;//The operating temperature of an engine in K
T2=t2+273;//The another operating temperature of an engine in K 
W=w*1000;//The given power of an engine in J/s
n=(1-(T2/T1))*100;//The efficiency of an engine in percent 
H=(T1/T2);//The amount of heat absorbed to the amount of heat rejected 
H2=W/(H-1);//The amount of heat rejected per second in J/s 
H1=H*H2;//The amount of heat absorbed per second in J/s 

//Output
printf('(i)The amount of heat absorbed is %3.0g J/s \n (ii)The amount of heat rejected is %3.0g J/s \n (iii)The efficiency of the engine is %3.1f percent ',H1,H2,n)
