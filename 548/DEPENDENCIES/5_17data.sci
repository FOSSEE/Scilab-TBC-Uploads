//consider a NACA-23012(finite wing)
Re=5*10^6;//reynold's number
e=0.95;//span efficiency factor
AR=10;//aspect ratio
a=4;//angle of attack in degree
//for a infinite wing of NACA-23012 airfoil:
Clo=1.2;//lift coefficient at 10 degree angle of attack
Cl1=0.14;//lift coefficient at 0 degree angle of attack
ao=(Clo-Cl1)/10 //infinite wing slope per degree
a1=ao/(1+57.3*ao/(3.14*e*AR)) //lift slope for finite wing
a2=-1.5;//angle of attack at zero lift from standard data
cd=0.006;//profile drag coefficient estimated from aerodynamic data

