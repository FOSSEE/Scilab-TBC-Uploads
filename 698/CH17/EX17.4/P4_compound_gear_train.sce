clc
//Example 17.4
//Compound gear train

//------------------------------------------------------------------------------

//Given data
//power
P=10000 //W
//speed
n=1440 //rpm
w=(2*%pi*n)/60 //rad/s
//Number of teeth
Na=25
Nb=100
Nc=30
Nd=150
//modules
ma=5 //mm
mb=ma
mc=6.5 //mm
md=mc
//pressure angle
phi=20 //degrees

res4=mopen(TMPDIR+'4_compound_gear_train.txt','wt')
//Torque on motor shaft
Mt=P/w

mfprintf(res4,'(a)Torque on motor shaft \n\tMt=60*P/ 2*pi*N=%0.2f Nm\n\n',Mt)

//Radii of gears
Ra=ma*Na /2
Rb=mb*Nb /2
Rc=mc*Nc /2
Rd=md*Nd /2
mfprintf(res4,'(b)Various radii of gears:\n\tRa=%0.1f mm\n\tRb=%d mm\n\tRc=%0.1f mm\n\tRd=%0.1f mm\n\n',Ra,Rb,Rc,Rd)

//Force on gears
Fta=Mt/(Ra*10^-3)
Ftb=Fta
Fra=Fta*tand(phi)
Frb=Fra
mfprintf(res4,'(c)Force on gears A and B:\n\tFta=Ftb=Mta/Ra=%0.2f N\n\tFra=Frb=Fta*tan(phi)=%0.2f N\n\n',Fta,Fra)

//Torque at transmission shaft containing B and C
mfprintf(res4,'(d)Torque at transmission shaft containing B and C:\n')
nb=n/(Nb/Na)
nc=nb
mfprintf(res4,'Speed of c=speed of B=%d RPM\n',nb)
Mtc=P*60 /(2*%pi*nc)
mfprintf(res4,'Torque at C=%0.1f Nm\n\n',Mtc)

//Forces on gears C and D
Ftc=Mtc/(Rc*10^-3)
Frc=Ftc*tand(phi)
mfprintf(res4,'(e)Force on gears C and D:\n\tFtc=Ftd=Mtc/Rc=%0.2f N\n\tFrc=Frd=Ftc*tan(phi)=%0.2f N\n\n',Ftc,Frc)

mclose(res4)
editor(TMPDIR+'4_compound_gear_train.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------