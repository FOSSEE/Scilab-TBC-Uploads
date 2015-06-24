clc
clear
disp("example 15.3")
b=4.2 //flux density
v=600  //gas velocity
d=0.6  //dimension of plate
k=0.65  //constent
sl=0.6  //length given
sb=0.35  //breath given
sh=1.7   //height given
c=60     //given condectivity
e=b*v*d //open circuit voltage
vg=e/d  //voltage gradient
v=k*e   //voltage across load
vgg=v/d  //voltage gradient due to load voltage
rg=d/(c*sb*sh)
vd=e-v //voltage drop in duct
i=vd/rg  //current due to voltage drop in duct
j=i/(sb*sh) //current density
si=e/(rg)  //short circuit current
sj=si/(sb*sh)  //short circuit current density
pd=j*vg     //power density
p=pd*sl*sh*sb //power 
pp=e*i  //also power
pde=v*i  //power delevered is V*i
los=p-pde  //loss
eff=pde/p  //efficiency
maxp=e^2/(4*rg)
printf("resistence of duct %fohms \n voltage drop in duct %.1fV \n current %.1fA \ncurrent density %fA/m^2 \nshort circuit current %.1fA \nshort current density %fA/m^2 \n power %fMW \npower delivered to load %fW \n loss in duct %fW \nefficiency is %f \nmaximum power delivered to load %dMW",rg,vd,i,j,si,sj,p/10^6,pde/10^6,los/10^6,eff,maxp/10^6) 

