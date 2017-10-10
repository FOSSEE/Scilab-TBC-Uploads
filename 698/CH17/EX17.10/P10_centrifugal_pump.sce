clc
//Example 17.10
//Centrifugal pump

//------------------------------------------------------------------------------

//Given data
//power
P=12000 //W
//speed
n=900 //rpm
nm=1300 //rpm
//module
m=5e-3 //m
//diameter of gear
Dg=0.2 //m
rg=Dg/2
//pressure angle
phi=14.5 //degrees
//face width
b=0.04 //m

res10=mopen(TMPDIR+'10_centrifugal_pump.txt','wt')

mfprintf(res10,'(a)First finding various dimensions:\n')
//torque
Mt=(P*60)/(2*%pi*nm)
mfprintf(res10,'\tTorque Mt=%d Nm\n',Mt)
//diameter of pinion
Dp=(n/nm)*Dg
rp=Dp/2
mfprintf(res10,'\tdiameter of pinion=%0.2f mm\n',Dp* 10^3)
//slant height
L=sqrt(rp^2 + rg^2)
mfprintf(res10,'\tSlant height of pitch cone=%0.2f mm\n',L*10e2)
beta=asind(rp/L)
rm=rp-(b*sind(beta)*0.5)
mfprintf(res10,'\tMean radius of pinion=%0.2f mm\n\n',rm*10e2)

//Finding various forces
mfprintf(res10,'(b) Finding various forces:\n')
//Tangential force at mean radius
Ft=Mt/rm
mfprintf(res10,'Tangential force at mean radius=%0.2f N\n\n',Ft)
//Pinion thrust force
Fp=Ft*tand(phi)*sind(beta)
mfprintf(res10,'Pinion thrust force=%0.2f N\n\n',Fp)
//Gearthrust force
Fg=Ft*tand(phi)*cosd(beta)
mfprintf(res10,'Gear thrust force=%0.2f N\n\n',Fg)

mclose(res10)
editor(TMPDIR+'10_centrifugal_pump.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
