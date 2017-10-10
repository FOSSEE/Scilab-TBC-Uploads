clc
clear
//INPUT DATA
BP=17;//Brake power in kW
mf=6;//Mass flow rate in kg/h
cv=44200;//calorific value in kJ/kg
L=0.1;//Stroke in m
d=0.06;//bore in m
Rc=8;//copression ratio
n=2;//for four cylinders
nc=4;//number of cylinders
N=50;//speed in rps

//CALCULATIONS
nbt=(BP/((mf/3600)*cv))*100;//Brake thermal efficiency in percentage
vs=(3.14*d^2*L)/4;//swept volume in m^3 
vc=vs/7;//Clearance volume in m^3
pmb=((BP*n)/(L*(3.14*d^2/4)*N*nc));//brake ean pressure in kPa
no=(1-(1/(Rc^(1.4-1))))*100;//Air standard efficiency in percentage

//OUTPUT
printf('(i)Brake thermal efficiency is %3.2f percentage \n (ii)clearance volume is %3.9f m^3 \n (iii)Brake mean effective pressure is %3.2f kPa \n (iv)air standard efficiency is %3.2f percentage',nbt,vc,pmb,no)
