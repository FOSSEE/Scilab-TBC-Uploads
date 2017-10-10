clc
clear
//INPUT DATA
t1=300;//temperature in K
t3=1300;//temperature in K
g=1.4;//constant

//CALCULATIONS
Rpm=(t3/t1)^(g/(g-1));//Solution pressure ratio
ng=(1-(t1/t3))*100;//thermal efficiency corresponds to maximum pressure ratio

//OUTPUT
printf('(i)Solution pressure ratio is %3.2f \n (ii)net workdone corresponds to maximum pressure ratio is zero \n (iii)thermal efficiency corresponds to maximum pressure ratio is %3.2f percntage \n (iv)work ratio is zero',Rpm,ng)


