clc
//Example 2.12
//Stresses in a locomotive
//------------------------------------------------------------------------------

//Given Data:

//Speed

V=96.6 //kmph

//Crank length
Cl=0.375 // m
//Length of side  rod
L=2 // m
//Radius of driver
R=0.915 // m

//Tractive effort per wheel
Et=45000 // N
//Weight of the rod
Wl=90 // kg/m
//Total weight
Wt=Wl*L // kg

//Cross section of rod
b= 0.075 // m
t= 0.15 // m

//------------------------------------------------------------------------------
res12=mopen(TMPDIR+'12_stresses_in_locomotive.txt','wt')

//angular speed of wheels
omega=((V*5)/18)/R

mfprintf (res12,"The angular speed of wheels is %0.1f rad/s\n",omega)
mfprintf (res12,"All points on the side rod have a downward acceleration ap\n")
mfprintf(res12,"The locomotive is moving with uniform velocity, therefore acceleration ao=0\n\n")

//Acceleration
apo=Cl* omega^2
mfprintf(res12,"\tap=ao+apo\n\t  =apo=%0.2fm/s^2\n\n",apo)

//Inertai Force
Fi=Wt*apo
mfprintf(res12,"Inertia force acting upward on the rod, Fi=%0.2f N\n\n",Fi)

//Net upward force
W=Fi-(Wt*9.81)
mfprintf(res12,"Net force acting upward on the rod, Fup=%0.2f N\n\n",W)

mfprintf(res12,"Axial force F can be determined by assuming rear wheel\nand rod as free bodies and taking moments about centre of wheel.\n")

mfprintf(res12,"\tCl*F= Et*R\n")

F=(Et*R)/Cl

mfprintf(res12,"The axial force F is %0.2f N\n\n",F)

mfprintf(res12,"Maximum bending moment for simple beam carrying unifornmly distributed load is\n\t")
mfprintf(res12,"(W*L)/8\n\n")

M=(W*L)/8

mfprintf(res12,"Normal Stress \n\tSx= (P/A) + (M*c)/I\n\n")
P=F
A=b*t
c=b
I=(b* (t^3))/12
Sx= (P/A) + (M*c)/I

Sn_max = Sx
Tmax = Sx/2

mfprintf(res12,"The maximum normal stress is \n\tSn_max = Sx = %0.1f MN/m^2\n\n",Sn_max* 10^-6)

mfprintf(res12,"The maximum shear stress is \n\tTmax = Sx/2 = %0.1f MN/m^2",Tmax* 10^-6)

mclose(res12)
editor(TMPDIR+'12_stresses_in_locomotive.txt')
//------------------------------------------------------------------------------
//---------------------------End of Program-------------------------------------