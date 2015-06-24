clc
clear
//Page number 479
//Input data 
m=1;//The given amount of nitrogen in g 
t1=50;//The initial temperature of nitrogen in degree centigrade 
t2=100;//The final temperature of nitrogen in degree centigrade 
Cv=0.18;//Molar specific heat of nitrogen 
w=28;//Molecular weight of nitrogen 

//Calculations 
T1=t1+273;//The initial temperature of nitrogen in K 
T2=t2+273;//The final temperature of nitrogen in K 
S=(Cv/w);//The Specific heat of nitrogen 
s=m*S*log(T2/T1);//The change in entropy in cal/K 

//Output 
printf('The change in entropy is %3.4g cal/K ',s)
