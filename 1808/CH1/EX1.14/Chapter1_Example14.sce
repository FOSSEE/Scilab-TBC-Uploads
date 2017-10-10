clc
clear
//INPUT DATA
a=450;//Area of indicator diagram mm^2
S=9.806;//Spring number
l=50*1.2;//Length of diagram
d=0.15;//bore in m
L=0.25;//stroke in m
N=400;//engine speed in rpm
nc=1;//number of cylinders
n=2;//for single cylinder
mf=3;//mass flow rate in kg/h
cv=44200;//calorific value
dTc=42;//rise of temperature for cooling water in Degree C
cpw=4.18;//specific pressure
mw=4;//mass of water
T=225;//Brake torque in Nm

//CALCULATIONS
pmi=a*S/l;//mean effective pressure in N/cm^2
IP=((pmi/10)*L*(3.14*(d^2)/4)*N*nc)/(60*n);//Indicated power in kW
BP=(2*3.14*N*T)/60000;//brake power in kW
nm=(BP/IP);//Meahanical efficiency in percentage
nbt=(BP*3600/(mf*cv))*100;//Brake thermal efficiency in percentage
bsfc=mf/BP;//Brake specific fuel consumption in kg/kWh
Qs=mf*cv/3600;//Heat supplied in kW
a11=(BP/Qs)*100;//% of heat equivalent to BP
Qw=(mw*cpw*(dTc))/60;//Heat lost to cooling water in kW
b11=(Qw/Qs)*100;//% of heat lost to cooling water
Qe=(Qs-(BP+Qw));//heat utilised in the system
c11=(Qe/Qs)*100;//% of heat lost to exhaust gases and radiation

//OUTPUT
printf('(i)Mechanical efficiency is %3.2f percentage \n(ii)Brake thermal efficiency is %3.2f percentage \n (iii)Brake specific fuel consumption is %3.3f kg/kW.hr \n(iv)\n(I)heat supplied is %3.3f kW \n (II)Heat utilised in the system %3.2f \n percentage',nm,nbt,bsfc,Qs,Qe)
