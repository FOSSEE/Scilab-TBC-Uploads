clc
clear
//Page number 494
//Input data 
T1=1200;//The temperature at which first engine receives heat in K 
T2=300;//The temperature at which second engine rejects to heat reservoir in K 

//Calculations 
Tw=(T1+T2)/2;//The temperature when the work outputs of two engines are equal in K 
Te=(T1*T2)^(1/2);//The temperature when the efficiency of two engines are equal in K 

//Output 
printf('(a)The temperature when the work outputs of two engines are equal is  %3.0f K \n (b)The temperature when the efficiency of two engines are equal is  %3.0f K ',Tw,Te)

