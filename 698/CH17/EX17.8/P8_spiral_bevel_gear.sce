clc
//Example 17.8
//Spiral bevel gear

//------------------------------------------------------------------------------

//Given data
//Gear ratio
G=4/3
//dimensions of pinion
dp=0.15 //m
rp=dp/2
b=0.05 //m
//speed
np=240 //rpm
//module
m=5*10e-3 //m
//pressure angle
phi_n=14.5 //degrees
//spiral angle
gamma=30 //degrees
//power
P=6000 //W

res8=mopen(TMPDIR+'8_spiral_bevel_gear.txt','wt')

mfprintf(res8,'(a)Since values are same, unknown parameters will be same as those in problem 17.7\n')
dg=dp*G
rg=dg/2
mfprintf(res8,'\tDiameter of Gear=%d mm',ceil(dg*10e2))
L=sqrt(rp^2 + rg^2)
mfprintf(res8,'\tSlant height of pitch cone:\n\tL=sqrt(rp^2 + rg^2)=%d mm\n',ceil(L*10e2))
beta=asind(rp/L)
rm=rp-(b*sind(beta)*0.5)
mfprintf(res8,'\tMean radius of pinion:\n\trm=rp-(b*sin(beta)*0.5)=%d mm\n',rm*10e2)
Mt=(P*60)/(2*%pi*np)
mfprintf(res8,'\tPinion torque Mt=%d Nm\n',Mt)
Ft=Mt/rm
mfprintf(res8,'\tTangential force at mean radius:\n\tFt=Mt/rm=%d N\n\n',Ft)

//Pinion thrust force
Fp=Ft*((tand(phi_n)*sind(beta))/cosd(gamma) - (tand(gamma)*cosd(beta)))
mfprintf(res8,'(b)Pinion thrust force:\n\tFp=Ft*((tand(phi_n)*sind(beta))/cosd(gamma) - (tand(gamma)*cosd(beta)))=%d N\n\n',Fp)

//Gear thrust force
Fg=Ft*((tand(phi_n)*cosd(beta))/cosd(gamma) + (tand(gamma)*sind(beta)))
mfprintf(res8,'(c)Gear thrust force:\n\tFg=Ft*((tand(phi_n)*cosd(beta))/cosd(gamma) - (tand(gamma)*sind(beta)))=%d N\n\n',Fg)

mclose(res8)
editor(TMPDIR+'8_spiral_bevel_gear.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
