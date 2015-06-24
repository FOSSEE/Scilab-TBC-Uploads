clc
clear

//input
//three impedances of resistance and inductive reactance are connected in star
r=20;//resistance in ohms
x=15;//reactance in ohms
v=440;//three phase supply voltage in volts

//calculations
z=((r^2)+(x^2))^0.5;//each impedance in ohms
il=v/((3^0.5)*z);//line current in amperes
ip=il;//for star connections
cosp1=(180/%pi)*acos(r/z);//power factor1 in degrees
cosp2=120+cosp1;//each current is displaced by 120 degrees
cosp3=240+cosp1;//each current is displaced by 120 degrees
ii=il*((cos(acos(r/z)))+cos((120+cosp1)*(%pi/180))+cos((240+cosp1)*(%pi/180)));//total in phase component in amperes
iq=il*-((sin(acos(r/z)))+sin((120+cosp1)*(%pi/180))+sin((240+cosp1)*(%pi/180)));//total quadrature component in amperes

//output
mprintf('the the resultant in phase and quadrature components are %3.5fA and %3.5fA respectively\nhence the sum of three balanced currents is zero',ii,iq)
