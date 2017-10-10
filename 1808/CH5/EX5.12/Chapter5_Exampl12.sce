clc
clear
//INPUT DATA
pd=8;//delivery pressure in bar
p1=1;//pressure in bar
n=1.3;//for single compression
m=2;//mass flow rate
R=0.287;//gas constant
t1=293;//temperature in K
N=2;//number of stages
t51=303;//temperature in K

//CALCULATIONS
wd1=(n/(n-1))*(m/60)*R*t1*(((pd/p1)^((n-1)/n))-1);//work done in single stage compression
wd2=N*(n/(n-1))*(m/60)*R*t1*(((pd/p1)^((n-1)/(N*n)))-1);//work done in two stage compression
wd3=(n/(n-1))*(m/60)*R*(((2*(t1*t51)^(1/2))*((pd/p1)^((n-1)/(n*N))))-(t1+t51));//work done in two stage compression with imperfect inter cooling
wd4=(m/60)*R*t1*log(pd/p1);//single stage compression in kW
p2=((wd1-wd2)/wd1)*100;//Percentage saving in 1st and 2nd stage
p3=((wd1-wd3)/wd1)*100;//Percentage saving in 1st and 3rd stage
p4=((wd1-wd4)/wd1)*100;//Percentage saving in 1st and 4th stage

//OUTPUT
printf('(i)work done in single stage compression is %3.3f kW \n (ii)work done in two stage compression is %3.4f kW \n (iii)work done in two stage compression with imperfect inter cooling is %3.4f kW \n (iv)single stage compression workdone is %3.4f kW \n ',wd1,wd2,wd3,wd4 )

printf('Percentage saving in 1st and 2nd stage %3.3f percentage \n Percentage saving in 1st and 3rd stage %3.3f percentage \n Percentage saving in 1st and 4th stage %3.3f percentage \n',p2,p3,p4 )
