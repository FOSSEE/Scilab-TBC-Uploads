clc
clear
//INPUT DATA
R=0.287;//gas constant
d=0.3;//diameter in m
l=0.4;//stroke in m
N=100;//speed in rpm
p1=1;//pressure in bar
p2=5;//pressure in bar
g=1.4;//constant
n=1.2;//index of copression

//CALCULATIONS
vs=(3.14*d^2*l*N)/4;//swept volume in m^2/min
ipis=p1*10^2*(vs/60)*log(p2/p1);//isothermal power required in kW
niso=(ipis/ipis)*100;//isothermal efficiency in percentage
pm=ipis/(vs*100);//mean effective pressure in kN/m^2
wd=(n/(n-1))*p1*10^2*(vs/60)*(((p2/p1)^((n-1)/n))-1);//polytropic work done
niso1=(ipis/wd)*100;//isothermal efficiency in percentage in polytropic process
pm1=wd*60/(vs*100);//mean effective pressure in bar
ipa=(g/(g-1))*p1*10^2*(vs/60)*(((p2/p1)^((g-1)/g))-1);//Adiabatic work done
niso2=(ipis/ipa)*100;//adiabatic isothermal efficiency in percentage
pm2=ipa*60/(vs*100);//mean effective pressure in bar

//OUTPUT
printf('(i)Isothermal \n Isothermal efficiency is %3.1f \n mean effective pressure is %3.4f bar \n (ii)ploytropic process \n Isothermal efficiency %3.2f percentage \n mean effective pressure is %3.4f bar \n (iii)Adiabatic process \n Isothermal efficiency %3.2f percentage \n mean effective pressure is %3.4f bar \n ',niso,pm,niso1,pm1,niso2,pm2)


