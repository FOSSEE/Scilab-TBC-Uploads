clc
clear
//INPUT DATA
S=180;//Piston speed in rpm
N=240;//speed in rpm
d=0.2;//bore in m
p1=1;//pressure in bar
p2=5.67;//compressed pressure in bar
R=0.287;//gas constant
t1=288;//entry temperature in K
n=1.3;//index of compression
cp=1.005;//specific pressure

//CALCULATIONS
l=S/(2*N);//Piston speed in m
vs=(3.14*d^2*l*N)/4;//swept volume in m^3/min
m=p1*10^2*vs/(R*t1);//mass flow rate in kg/min
t2=t1*((p2/p1)^((n-1)/n));//exit temperature in K
wd=(n/(n-1))*(m/60)*R*t1*(((p2/p1)^((n-1)/n))-1);//rate of work done 
wdis=(m/60)*R*t1*log(p2/p1);//Rate of work done by isothermal compression in kW

//OUTPUT
printf('(i)Mass flow rate %3.2f kg/min \n (ii)rate of work done %3.1f kW \n exit temperature is %3.1f K \n (iii)Rate of work done by isothermal compression is %3.4f kW',m,wd,t2,wdis)


