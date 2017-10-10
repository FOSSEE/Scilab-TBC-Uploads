clc
//Example 17.7
//Forces on Bevel gear

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
phi=14.5 //degrees
//power
P=6000 //W

res7=mopen(TMPDIR+'7_forces_on_bevel_gear.txt','wt')

//diameter of gear
dg=dp*G
rg=dg/2
mfprintf(res7,'(a)Diameter of Gear=%d mm\n\n',ceil(dg*10e2))

//Slant height of pitch cone
L=sqrt(rp^2 + rg^2)
mfprintf(res7,'(b)Slant height of pitch cone:\n\tL=sqrt(rp^2 + rg^2)=%d mm\n\n',ceil(L*10e2))

//Mean radius of pinion
beta=asind(rp/L)
rm=rp-(b*sind(beta)*0.5)
mfprintf(res7,'(c)Mean radius of pinion:\n\trm=rp-(b*sin(beta)*0.5)=%d mm\n\n',rm*10e2)

//Pinion torque
Mt=(P*60)/(2*%pi*np)
mfprintf(res7,'(d)Pinion torque Mt=%d Nm\n\n',Mt)

//Tangential force at mean radius
Ft=Mt/rm
mfprintf(res7,'(e)Tangential force at mean radius:\n\tFt=Mt/rm=%d N\n\n',Ft)

//Pinion thrust force
Fp=Ft*tand(phi)*sind(beta)
mfprintf(res7,'(f)Pinion thrust force:\n\tFp=Ft*tan(phi)*sin(beta)=%d N\n\n',Fp)

//Gearthrust force
Fg=Ft*tand(phi)*cosd(beta)
mfprintf(res7,'(f)Gear thrust force:\n\tFg=Ft*tan(phi)*cos(beta)=%d N\n\n',Fg)

mclose(res7)
editor(TMPDIR+'7_forces_on_bevel_gear.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
