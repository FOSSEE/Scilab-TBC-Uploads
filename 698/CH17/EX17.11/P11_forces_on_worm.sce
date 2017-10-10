clc
//Example 17.11
//Forces on worm

//------------------------------------------------------------------------------

//Given data
//power
P=6000 //W
//speeds
nw=1200 //rpm
ng=60 //rpm
//diameter of worm
Dw=71.26e-3 //m
r=Dw/2
//module
m=20e-3 //m
//number of teeth
Ng=60
//pressure angle
phi_n=20 //degrees
//coefficient of friction
f=0.1
//number of starts
n=3
//lead
l=n*m

res11=mopen(TMPDIR+'11_forces_on_worm.txt','wt')

//torque on worm
Mt=(P*60)/(2*%pi*nw)
mfprintf(res11,'(a)Torque on the worm\n\tMt=%0.1f Nm\n\n',Mt)

//Tangential force on worm
Ft_worm=Mt/r
mfprintf(res11,'(b)Tangential force on worm\n\tFt_worm=Mt/r =%d N\n\n',Ft_worm)

//Tangential force on gear
alpha=atand(l/(%pi*Dw))
Ft_gear=Ft_worm*((1- ((f*tand(alpha))/cosd(phi_n)))/(tand(alpha) + f/cosd(phi_n)))
mfprintf(res11,'(c)Tangential force on gear\n\tFt_gear=Ft_worm* (1- (f*tand(alpha))/cosd(phi_n))/(tand(alpha) + f/cosd(phi_n)) =%d N\n\n',Ft_gear)

//Separating force
Fr=(Ft_gear*sind(phi_n))/(cosd(phi_n)*cosd(alpha) + f*sind(alpha))
mfprintf(res11,'(d)Separating force\n\tFr=Ft_gear* sind(phi_n)/(cosd(phi_n)*cosd(alpha) + f*sind(alpha)) =%d N\n\n',Fr)

mclose(res11)
editor(TMPDIR+'11_forces_on_worm.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
