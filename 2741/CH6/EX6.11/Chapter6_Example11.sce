clc
clear
//Input data 
T1=450;//The temperature of the source in k 
H1=1000;//The amount of heat taken by the engine at T1 in calories 
T2=350;//The temperature of the sink in K 

//Calculations 
H2=(T2/T1)*H1;//The amount of heat rejected to the sink in each cycle in calories
n=(1-(T2/T1))*100;//The efficiency of the engine in percent 
W=H1-H2;//The work done by the engine in each cycle in calories
W1=W*4.2;//The work done by the engine in each cycle in joules 

//Output
printf('The amount of heat rejected to the sink in each cycle is H2 = %3.2f cals \n The efficiency of the engine is %3.2f percent \n The work done by the engine in each cycle is W = %3.2f joules',H2,n,W1)
