clc
//Example 17.9
//Bevel gear pair

//------------------------------------------------------------------------------

//Given data
//power
P=10000 //W
//speed
n=500 //rpm
//module
m=5e-3 //m
//number of teeth on pinion
Np=40
//pressure angle
phi=20 //degrees
//gear ratio
G=3
//face width
b=67e-3 //mm

res9=mopen(TMPDIR+'9_bevel_gear_pair.txt','wt')
mfprintf(res9,'(a)First finding various dimensions:\n')
//torque
Mt=(P*60)/(2*%pi*n)
mfprintf(res9,'\tTorque Mt=%d Nm\n',Mt)
//diameter of pinion
Dp=m*Np
rp=Dp/2
//diameter of gear
Dg=Dp*G
rg=Dg/2
mfprintf(res9,'\tdiameter of pinion=%d mm\n\tdiameter of gear=%d mm\n',Dp* 10^3,Dg* 10^3)
//slant height
L=sqrt(rp^2 + rg^2)
mfprintf(res9,'\tSlant height of pitch cone=%0.2f mm\n',L*10e2)
beta=asind(rp/L)
rm=rp-(b*sind(beta)*0.5)
mfprintf(res9,'\tMean radius of pinion=%0.2f mm\n\n',rm*10e2)

//Finding various forces
mfprintf(res9,'(b) Finding various forces:\n')
//Tangential force at mean radius
Ft=Mt/rm
mfprintf(res9,'Tangential force at mean radius=%0.2f N\n\n',Ft)
//Pinion thrust force
Fp=Ft*tand(phi)*sind(beta)
mfprintf(res9,'Pinion thrust force=%0.2f N\n\n',Fp)
//Gearthrust force
Fg=Ft*tand(phi)*cosd(beta)
mfprintf(res9,'Gear thrust force=%0.2f N\n\n',Fg)

mclose(res9)
editor(TMPDIR+'9_bevel_gear_pair.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
