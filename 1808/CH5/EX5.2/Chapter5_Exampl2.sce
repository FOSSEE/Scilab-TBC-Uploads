clc
clear
//INPUT DATA
p1=1;//pressure in bar
n=1.2;//constant
N=100;//speed in rpm
Rp=6;//compression ratio at constant pressure
aps=150;//average piston speed in m/min
ip=50;//indicated power in kW


//CALCULATIONS
pm=p1*(n/(n-1))*((Rp^((n-1)/n))-1);//Mean effective pressure in bars
a=ip*60/(pm*10^2*150);//size of the cylinder in m^2
d=sqrt(a*4/3.14);//size of the cylinder in m^2
l=150/(2*N);//size of the cylinder in m^2

//OUTPUT
printf('(i)size of the cylinder is d %3.4f m \n  l %3.2f m',d,l)


