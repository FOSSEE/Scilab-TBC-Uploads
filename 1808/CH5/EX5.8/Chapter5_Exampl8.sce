clc
clear
//INPUT DATA
d=0.3;//bore length in m
l=0.4;//stroke length in m
N=300;//speed in rpm
g=1.4;//constant
n=1.25;//adiabatic compression constant
p1=1;//suction pressure
pd=5;//delivery pressure
m=1.5;//adiabatic constant

//CALCULATIONS
vs=(3.14*(d)^2*l*N)/4;//Volume of air compressed per min
pm=p1*log(pd/p1);//Mean effective pressure in bar
ip=p1*10^2*(vs/60)*log(pd/p1);//indicated power in kW
pm1=p1*(n/(n-1))*((((pd/p1)^((n-1)/n)))-1);//Mean effective pressure in bar
ip1=pm1*vs*100/60;//indicated power in kW
nso1=(ip/ip1)*100;//Isothermal efficiency in percentage
pm2=p1*(g/(g-1))*((((pd/p1)^((g-1)/g)))-1);//Mean effective pressure in bar
ip2=pm2*vs*100/60;//indicated power in kW
nso2=(ip/ip2)*100;//Isothermal efficiency in percentage
pm3=p1*(m/(m-1))*((((pd/p1)^((m-1)/m)))-1);//Mean effective pressure in bar
ip3=pm3*vs*100/60;//indicated power in kW
nso3=(ip/ip3)*100;//Isothermal efficiency in percentage
nad=(ip2/ip3)*100;//adiabatic efficiency in percentage

//OUTPUT
printf('(i)isothermal compression \n Indicated mean effective pressure %3.4f bar \n Ideal power %3.3f kW \n (ii)compression process according to to pv^1.25 \n Indicated mean effective pressure %3.4f bar \n Ideal power %3.3f kW \n isothermal efficiency is %3.3f percentage \n (iii)Compression is reversible adiabatic \n Indicated mean effective pressure %3.4f bar \n Ideal power %3.3f kW \n isothermal efficiency is %3.3f percentage \n (iv)compression is irreversible adiabatic \n Indicated mean effective pressure %3.4f bar \n Ideal power %3.3f kW \n isothermal efficiency is %3.3f percentage \n adiabatic efficiency is %3.3f percentage ',pm,ip,pm1,ip1,nso1,pm2,ip2,nso2,pm3,ip3,nso3,nad)

