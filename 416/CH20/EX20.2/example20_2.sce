clc
clear
disp('example 20.2')
ee=5*10^16  //electrical energy requirement
eer=0.1   //energy requirement
i=5*10^6  //investement
n=20     //life time
ec=4.1    //energy cost
r=0.13   //interest rate
dr=r/((1+r)^(n)-1) //depreciation rate
dr=round(dr*10^5)/10^5
tfc=r+dr   //total fixed cost
ace=i*tfc  //annual cost
ace=round(ace/10^2)*10^2
eb=i*ec   //electrical bill with present motor
teb=eb*(1-eer) //electrical bill with efficiency motor
tac=teb+ace   //total annual cost with efficiency cost
as=eb-tac  //annual saving
printf(" depreciation rate %.5f \n total fixed charge rate %f\n annual cost of efficiency motor Rs%eper year \n total electrical bill with present motors Rs%eper year \n total electrical bill with efficiency motor Rs.%e \n total annual cost if motors are replaced by high efficiency motors Rs%e per year \n annual saving Rs%d per year",dr,tfc,ace,eb,teb,tac,as)
disp('b')
pwf=r/(1-((1+r)^-n)) //present worth factor
pwf=round(pwf*10^5)/10^5
pwm=teb/pwf   //present worth annual cost with existing motors
pwm=round(pwm/10^4)*10^4 //present worth with existing motors
pwem=eb/pwf //present worth with efficiency motor
pwem=round(pwem/10^4)*10^4
pwam=teb/pwf
pwam=round(pwam/10^4)*10^4
tpw=pwam+i  //total persent worth
printf("present worth factor %.5f \n present worth of annual cost with existing motors Rs%e \n present worth of annual cost with new motor Rs%e \n total present worth %e per year",pwf,pwem,pwam,tpw)