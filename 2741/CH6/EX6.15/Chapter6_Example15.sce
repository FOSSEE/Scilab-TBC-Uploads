clc
clear
//Input data 
T1=600;//The higher temperature of the reservoir in K 
T2=300;//The lower temperature of the reservoir in K 
n1=52;//The efficiency claimed by the inventor in percent 

//Calculations 
n=(1-(T2/T1))*100;//The efficiency of the carnot engine in percent 

//Output 
printf('The efficiency of the carnot engine is %3.0f percent \n The efficiency claimed is %3.0f percent \n The efficiency of the engine is more than the efficiency of the carnot engine \n .But no engine can have an efficiency more than a carnots engine, \n so his claim is invalid',n,n1)
