clc
clear
//INPUT DATA
no=0.5;//Air standard efficiency in percenatge
nr=0.7;//relative efficiency in percenatge
nm=80;//mechanical efficiency in percenatge
cv=45000;//calorific value in kJ/kg
BP=75;//Brake power in kW
Ra=0.287;//Gas constant
Ta=300;//suction temperature in K
pa=1*100;//pressure in kN/m^2 
Vs=0.10352;//swept volume in m^3/s
N=2500;//speed in rpm
nc=1;//number of cylinders
n=2;//for four cylinders

//CALCULATIONS
Rc=(1/(1-no))^(1/(1.4-1));//copression ratio
nit=(no*nr)*100;//Indicated thermal efficiency in percentage
IP=(BP/nm)*100;//indicated power in kW
mf=((IP*100)/(nit*cv));//mass fuel consumption in kg/s
bsfc=(mf*3600)/BP;//Brake specific fuel consumption in kg/kWh 
nbt=(BP/(mf*cv))*100;//Brake thermal efficiency in percentage
ma=16*mf;//mass of air in kg/s
va=(ma*Ra*Ta)/(pa);//actual volume of air consumption
vs=va/no;//swept volume in m^3/s
d=(4*60*n*vs/(3.14*1.5*N))^(1/3);//bore in m
L=1.5*d;//stroke in m

//OUTPUT
printf('(i)Compression ratio is %3.3f \n(ii)Indicated thermal efficiency is %3.2f percentage \n (iii)Brake specific fuel consumption is %3.4f kg/kWh \n(iv)Brake thermal efficiency is %3.d percentage \n(v)bore %3.2f m \n stroke is %3.2f m',Rc,nit,bsfc,nbt,d,L)

