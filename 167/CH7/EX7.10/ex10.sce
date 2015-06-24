//ques10
//Isentropic Compression of Air in a Car Engine
clear
clc

//Using equation (T2/T1)=(v1/v2)^(k-1)
T1=295//initial temp in K
t=8//v1/v2 ratio
k=1.391//isentropic ratio
T2=T1*(t)^(k-1);//final temp in K
printf('Final temperature = %.1f K \n',T2);
printf(' Increase in temperature = %.1f K ',T2-T1);


