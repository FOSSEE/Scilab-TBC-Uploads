clear all
clc
close

f=50;//Power frequency
xl=8/100;//leakage reactance
r=3.5/100;//resistance
Vc=500;//Charging voltage in kV
Ic=4;//Charging current in A
capc=100;//kVA rating of transformer
vhigh=250;//Voltage rating of secondary of transformer in kV
vlow=220;//Voltage rating of primary of transformer in V

//Reactance of cable in kiloohm
Xc=Vc/Ic

//Leakage recatance of transformer in kiloohm
XL=xl*(vhigh^2/capc)

//Additional series inductance
xh=Xc-XL;

//Inductance of the required series inductor in Henry
L=xh/(2*%pi*f)*1e3;
printf('Inductance of the required series inductor in %f  Henry \n',L)

//Total circuit resistance in kiloohm
R=r*(vhigh^2/capc)

//The maxium current can be supplied by transformer in A
I=capc/vhigh;

Vsec = I*R;
printf("exciting voltage on the transformer secondary %f kV \n",Vsec)

//Exciting voltage of secondary of transformer in kV
Vexsec=I*R;

//Input voltage to primary of transformer in V
Vin=Vexsec*1e3*vlow/(vhigh*1e3);
printf('Input voltage to primary of transformer in  %f V \n',Vin)

//Input power to transformer in kW
Pin=Vin*capc/vlow
printf('Input power to primary of transformer in %f kW \n',Pin)
