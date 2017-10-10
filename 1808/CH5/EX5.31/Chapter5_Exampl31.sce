clc
clear
//INPUT DATA
d=0.1;//bore in m
vc=10*10^-5;//clearance volume
p1=0.95;//suction pressure
p2=8;//discharge pressure
n=1.3;//index of compression
N=400;//Speed in rpm
t1=303;//temperature in K
to=293;//temperature in K
po=1;//pressure in bar

//CALCULATIONS
vs=(3.14*(d^3)*1.5)/4;//swept volume in m^3
k=vc/vs;//clearance ratio
nv=1+k-(k*((p2/p1)^(1/n)));//volumetric efficiency
va=vs*nv*N;//volume of air delivered in m^3/min
vo=p1*va*to/(po*t1);//volume of air delivered in m^3/min
pm=((n/(n-1))*p1*(va/400)*(((p2/p1)^((n-1)/n))-1))/(vs);//mean effective pressure in bar
disp(vo)
//OUTPUT
printf('(i)The volume of air delivered is %3.4f m^3/min \n (ii)mean effective pressure is %3.3f bar \n ',vo,pm)
