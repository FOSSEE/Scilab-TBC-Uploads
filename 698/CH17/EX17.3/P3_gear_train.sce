clc
//Example 17.3
//Gear train

//------------------------------------------------------------------------------

//Given data
//Number of teeth
Na=35
Nb=65
Nc=45
//Speeds
n=600 //rpm
w=(2*%pi*n)/60
//Power
P=3000 //W
//pressure angle
phi=20
//module
m=6 //m

res3=mopen(TMPDIR+'3_gear_train.txt','wt')

//Gear diameters
Da=Na*m
Db=Nb*m
Dc=Nc*m
mfprintf(res3,'(a)Gear diameters:\n\tDa=%d mm\n\tDb=%d mm\n\tDc=%d mm\n\n',Da,Db,Dc)

//Torque
Mta=P/w
Mtb=0
Mtc=Mta* (Nc/Na)
mfprintf(res3,'(b)Torque on shafts:\n\tMta=%0.2f Nm\n\tMtb=%d Nm\n\tMtc=%0.1f Nm\n\n',Mta,Mtb,Mtc)

//Forces on gear A
Ft=Mta/((Da/2)*10^-3)
Fr=Ft*tand(phi)
mfprintf(res3,'(c)Tangential force on gear A: Ft=%d N\n   Separating force Fr=%d N\n\n',Ft,Fr)
mfprintf(res3,'(d)The same tangential and separating force occurs between gears\nA and B and between gears B and C.\n\n')

max_force=max(Ft,Fr)
mfprintf(res3,'(e) The tooth load for which each gear must be designed is %d N\n\n',max_force)

//Force applied to idler shaft
Fb=sqrt(2*(Ft^2 + Fr^2))
mfprintf(res3,'(f)The force applied to idler shaft of gear B is the vector sum\nof the forces applied to gear B by A and C\n')
mfprintf(res3,'Fb=sqrt(2*(Ft^2 + Fr^2))=%d N',Fb)

mclose(res3)
editor(TMPDIR+'3_gear_train.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
