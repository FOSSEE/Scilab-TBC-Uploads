clc
//Example 17.1
//Tangential and separating force

//------------------------------------------------------------------------------

//Given data
//Torque
Mt=200 //Nm
//Dimensions of gears
dp=0.1 //m (pinion)
rp=dp/2
dg=0.25 //m (gear)
rg=dg/2
//Pressure angle
phi=20 //degrees

res1=mopen(TMPDIR+'1_tangential_and_separating_force.txt','wt')
mfprintf(res1,'Tangential force Ft=Mt/rp\n')
Ft=Mt/rp
mfprintf(res1,'\tFt=%d N\n\n',Ft)

Fr=Ft* tand(phi)
mfprintf(res1,'Separating force Fr=Ft*tan(phi)\n\tFr=%d N\n\n',Fr)

mclose(res1)
editor(TMPDIR+'1_tangential_and_separating_force.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
