clc
clear
//Input data
N=1200;//Operating speed of a four cylinder engine in rpm
BHP=25.3;//The brake horse power when all 4 cylinders are operating in kW
T=10.5;//The average torque when one cylinder was cut out in mkgf
CV=10000;//Calorific value of the fuel used in kcal/kg
f=0.25;//The amount of petrol used in engine per BHP hour
J=427;//

//Calculations
BHP1=(2*3.14*N*T)/4500;//BHP for 3 cylinders when 1 cylinder is cut out in kW
IHP=BHP-BHP1;//IHP of one cylinder in kW
IHPt=IHP*4;//Total IHP of the engine with 4 cylinders
Wf=(f*BHP)/60;//Fuel used per minute in kg
ni=((IHPt*4500)/(Wf*CV*J))*100;//Indicated thermal efficiency in percent
nm=(BHP/IHPt)*100;//Mechanical efficiency in percent
nb=(IHPt*nm)/100;//Brake thermal efficiency in percent

//Output
printf('The indicated thermal efficiency is %3.1f percent',ni)
