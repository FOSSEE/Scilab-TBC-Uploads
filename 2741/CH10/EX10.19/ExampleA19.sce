clc
clear
//Page number 479
//Input data 
m=10;//The given amount of ice in g 
T1=273;//The initial temperature of ice in K
T2=373;//The final temperature of steam in K 
L1=80;//The latent heat of ice in cal/g
L2=540;//The latent heat of vapourisation of steam in cal

//Calculations 
s1=(m*L1)/T1;//Increase in entropy from ice at 273K to water at 273K in cal/K
s2=(m)*log(T2/T1);//Increase in entropy from water at 273K to water at 373K in cal/K 
s3=(m*L2)/T2;//Increase in entropy from water at 373K to steam at 373K in cal/K 
s=s1+s2+s3;//The total increase in entropy in cal/K 

//Output
printf('The total increase in entropy is %3.2f cal/K ',s)
