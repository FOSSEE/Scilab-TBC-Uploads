clc
//Example 17.5
//Forces on Helical gear

//------------------------------------------------------------------------------

//Given data
//diameter of gear
d=0.25 //m
r=d/2
//torque
Mt=200 //Nm
//number of teeth
Ng=45
//angles
phi_t=20 //degrees
alpha=30 //degrees

res5=mopen(TMPDIR+'5_forces_on_helical_gear.txt','wt')

//tangential force
Ft=Mt/r
mfprintf(res5,'(a)Ft=Mt/r\n\t=%d N\n\n',Ft)

//Separating force
Fr=Ft*tand(phi_t)
mfprintf(res5,'(b)Fr=Ft*tan(phi_t)\n\t=%d N\n\n',Fr)

//Axial thrust force
Fa=Ft*tand(alpha)
mfprintf(res5,'(c)Fa=Ft*tan(alpha)\n\t=%d N',Fa)

mclose(res5)
editor(TMPDIR+'5_forces_on_helical_gear.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------