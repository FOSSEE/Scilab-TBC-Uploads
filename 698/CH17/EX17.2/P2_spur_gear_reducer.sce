clc
//Example 17.2
//Spur gear reducer

//------------------------------------------------------------------------------

//Given data
//Power transmitted
P=5000 //W
//Speed
N=1440 //rpm
w=(2*%pi*N)/60
//Gear ratio
G=3
//Teeth on pinion
Np=20
//Pressure angle
phi=20 //degrees
//module
m=5 //mm

res2=mopen(TMPDIR+'2_spur_gear_reducer.txt','wt')

//Torque
Mt=P/w
mfprintf(res2,'(a) Torque=P*60/ 2*pi*N\n\tMt=%0.3f Nm\n\n',Mt)

//radius of pinion
rp=m*Np* 10^-3 /2
//Tangential force
Ft=Mt/rp
mfprintf(res2,'(b)Tangential Force on Gears Ft=Mt/rp\n\tFt=%0.1f N\n\n',Ft)

//Radial Force on gears
Fr=Ft*tand(phi)
mfprintf(res1,'Radial force Fr=Ft*tan(phi)\n\tFr=%0.2f N',Fr)

mclose(res2)
editor(TMPDIR+'2_spur_gear_reducer.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
