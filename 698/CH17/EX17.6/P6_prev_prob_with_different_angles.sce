clc
//Example 17.5
//Previous problem with different angles

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
phi_n=20 //degrees
alpha=30 //degrees

res6=mopen(TMPDIR+'6_prev_prob_with_different_angles.txt','wt')

//tangential force
Ft=Mt/r
mfprintf(res6,'(a)Ft=Mt/r\n\t=%d N\n\n',Ft)

//Separating force
Fr=Ft*(tand(phi_n)/cosd(alpha))
mfprintf(res6,'(b)Fr=Ft*tan(phi_n)/cos(alpha)\n\t=%d N\n\n',Fr)

//Axial thrust force
Fa=Ft*tand(alpha)
mfprintf(res6,'(c)Fa=Ft*tan(alpha)\n\t=%d N',Fa)

mclose(res6)
editor(TMPDIR+'6_prev_prob_with_different_angles.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
