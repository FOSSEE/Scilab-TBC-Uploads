clc
clear
//INPUT DATA
p1=1;//initial pressure in bar
pd=16;//delivery pressure in bar
n=1.25;//index of compression
m=10;//mass flow rate 
R=0.287;//gas constant
t1=288;//temperature in K
cp=1.005;//specific pressure
k1=0.04;//clearance retio
k2=0.06;//clearance ratio
N=400;//speed in rpm
g=1.4;//constant


//CALCULATIONS
p2=sqrt(p1*pd);//intermediate pressure in bar
ipm=2*(n/(n-1))*(m/60)*R*t1*((p2/p1)^((n-1)/n)-1);//power required in kW
pi=(m*R*t1/60)*log(pd/p1);//isothermal power
niso=(pi/ipm)*100;//isothermal efficiency in percentage
va=m*R*t1/(p1*10^2);//free air delivered in m^3/min
t2=t1*(p2/p1)^((n-1)/n);//temperature in K
Qr=(m/60)*cp*(t2-t1);//heat rejected in intercooler in kW
nvl=1+k1-k1*((p2/p1)^(1/(n*2)));//volumetric efficiency in percentage
vsl=va/(N*nvl);//swept volume in m^3
nv2=(1+k2-(k2*((pd/p1)^(1/(n*2)))))*100;//volumetric efficiency in percentage
vsh=va/(2*((pd/p1)*N*nv2)^(1/2));//swept volume 
Ql=(g-n)*m*R*(t2-t1)/((g-1)*(n-1));//heat transferred in LP
Qh=(g-n)*m*R*(t2-t1)/((g-1)*(n-1));//heat transferred in HP
t6=t1*(pd/p1)^((n-1)/n);//temperature in K
Qi=(m/60)*cp*(t2-t1);//Heat trnsferred in intercooler

//OUTPUT
printf('(i)The power required is %3.3f kW \n (ii)The isothermal efficiency is %3.3f percentage \n (iii)The free air delivered is %3.4f m^3/min \n (iv)The heat rejected in intercooler is %3.3f kW \n (v)swept volume is %3.5f m^3 \n  swept volume is %3.5f m^3 \n (vi)net heat transferred in intercooler is %3.3f kW',ipm,niso,va,Qr,vsl,vsh,Qi)






