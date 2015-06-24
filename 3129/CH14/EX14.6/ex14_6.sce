//Finding the Performance Parameter of a forward converter
//Example 14.6(Page No-633) 
clc
clear
//given data
Kt=4.44//for square wave
V0=40//in volts
I0=6.5//in amperes
V1=120//primary voltage
P0=V0*I0//in watts
n=0.95//efficiency is 95%
Ku=0.4
f=60//Hz
Pt=(1+1/n)*P0
printf('apparent transformer powerPt:%3.2f W\n',Pt )
Kj=366//Given in table
x=-0.14
Bm=1.4
Ap=(Pt*(10^4)/(Kt*Ku*Kj*f*Bm))^(1/(1-x))
printf('Area product:%3.2f cm^4\n',Ap)
//Area product given in Textbook is wrong since they have taken Kt=0.4 but Kt is 4.44
Ac=24.4//core area in square cm
Ln=27.7//mean lenght of a turn in cm
Np=V1*10^4/(Kt*f*Bm*Ac)
printf('Primary no of turns Np:%d \n',Np)
Ns=Np*V0/V1
printf('secondary no of turns Ns:%d \n',Ns)
J=Kj*Ap^x
I1=(Pt-P0)/V1
Awp=I1/J//primary bare wire cross sectional area
printf('primary bare wire cross sectional area:%2.3f cm^2\n',Awp)
//we found from table AWG no as 16
rp=131.8//microohm/cm
Rp=Ln*Np*rp*10^-6
printf('primary winding resistanceRp:%2.2f Ohms \n',Rp)
Ip=I1
Pp=Ip^2*Rp
printf('primary copper lossPp:%2.2f W \n',Pp)
Aws=I0/J
printf('secondary bare wire cross sectional area:%2.3f cm^2\n',Aws)
//From wire size table we have
rs=41.37//microohm/cm
Rs=Ln*Ns*rs*10^-6
printf('secondary winding resistance Rs:%2.2f ohm\n',Rs)
Ps=I0^2*Rs
printf('secondary copper lossPs:%2.2f W\n',Ps)
//using figure we have
Pfe=(0.557*10^-3)*f^1.68*Bm^1.86 // Transformer core loss given in texbok is wrong
printf('Transformer core loss:%2.2f W\n',Pfe)
ef=P0*100/(P0+Pp+Ps+Pfe)
printf('transformer efficincy is:%.2f %%',ef)
 



