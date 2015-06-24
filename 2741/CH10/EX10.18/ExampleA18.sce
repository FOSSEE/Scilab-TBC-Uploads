clc
clear 
//Page number 478
//Input data 
m=50;//The given amount of water in g 
t1=10;//The initial temperature of water in degree centigrade 
t2=90;//The final temperature of water in degree centigrade 

//Calculations 
T1=t1+273;//The initial temperature of water in K 
T2=t2+273;//The final temperature of water in K 
S=m*log(T2/T1);//The increase in entropy in cal/K 

//Output 
printf('The increase in entropy is %3.3f cal/K ',S)
