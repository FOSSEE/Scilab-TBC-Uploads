clc
clear
//Input data 
M=1;//Mass of water in kg 
m=M*1000;//Mass of water in g 
T1=273;//The temperature of the water in K 
T2=373;//The temperature of the heat reservoir in K 
s=1;//Specific heat of water

//Calculations 
S1=m*s*log(T2/T1);//Increase in entropy when the temperature of 1000 g of water is raised from 273 K to 373 k in cal/K 
S2=-(m*s*(T2-T1))/T2;//Change in entropy of the reservoir in cal/K 
S=S1+S2;//Change in entropy of the universe in cal/K 

//Output
printf('(1)The change in entropy of water when temperature reaches 373 K is  %3.0f cal/K \n (2) (i)The Change in entropy of the reservoir is  %3.1f cal/K  \n (ii)The Change in entropy of the universe is  %3.1f cal/K ',S1,S2,S)
