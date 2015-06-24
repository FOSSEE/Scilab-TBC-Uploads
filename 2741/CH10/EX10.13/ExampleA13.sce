clc
clear
//Page number 475
//Input data 
T1=600;//The working temperature of the engine in K 
T2=300;//The another working temperature of the engine in K 
n=52;//Efficiency of the engine claimed by the inventor in percent 

//Calculations 
n1=(1-(T2/T1))*100;//The carnot efficiency of the engine in percent 

//Output 
printf('The efficiency of the engine claimed by inventor is n = %3.0f percent\nThe carnot efficiency of the engine is n = %3.0f percent \n (The efficiency claimed is more than the carnots engine efficiency \n No engine can have efficiency more than carnots efficiency \n Hence the claim is invalid)',n,n1)

