clc
clear
//INPUT DATA
W=160;//load on dynamometer in N
N=3000;//speed of engine in rpm
Dy=20420;//Dynamometer constnat
L=0.09;//stroke in m
d=0.06;//bore in m
nc=4;//number of cylinders
n=2;//for four cylinders
mf=4.95;//fuel consumption in kg/h
cv=42500;//calorific value
BP1c=16.5;//Brake power of 1st cylinder
BP2c=16;//Brake power of 2nd cylinder
BP3c=15.6;//Brake power of 3rd cylinder
BP4c=17.6;//Brake power of 4th cylinder

//CALCULATIONS
BP4=W*N/Dy;//Brake power in kW
pmb=(BP4*60*n)/(L*(3.14*(d^2)/4)*N*nc*4);//Brake ean effective pressure in kN/m^2
nbt=(BP4*3600/(mf*cv))*100;//Brake thermal efficiency in percentage
IP1=BP4-BP1c;//Indicated power of 1st cylinder
IP2=BP4-BP2c;//Indicated power of 2nd cylinder
IP3=BP4-BP3c;//Indicated power of 3rd cylinder
IP4=BP4-BP4c;//Indicated power of 4th cylinder
IP=IP1+IP2+IP3+IP4;//Total indicated power in kW
nm=(BP4/IP)*100;//Mechanical efficiency in percentage
bsfc=mf/BP4;//Brake specific fuel consumption in kg/kWh

//OUTPUT
printf('(i)Brake power is %3.3f kW \n (ii)Brake mean effective pressure is %3.3f kN/m^2 \n (iii)brake thermal efficiency is %3.2f percentage \n (iv)mechanical efficiency is %3.3f percentage \n (v)Brake specific fuel consumption %3.3f kg/kW.hr ',BP4,pmb,nbt,nm,bsfc)

