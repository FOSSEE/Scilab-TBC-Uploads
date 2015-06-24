a=2;//angle of attack for both wings
e=0.95;//span efficiency factor for both wings
a2=-1.5;//angle of attack at zero lift from standard data(also used in example 5.17)
//part a. for the airfoil of aspect ratio 4:
AR1=4;//aspect ratio.
ao=0.106;//infinite wing slope per degree (from example 5.17)
a1=ao/(1+57.3*ao/(%pi*e*AR1)) //lift slope for finite wing
Cl=a1*(a-a2) //lift coefficient at 2 degree
Cl1=a1*(a+0.5-a2) //lift coefficient at 2.5 degree
Dcl=Cl1-Cl //change in lift coefficient for wing 1(aspect ratio 4)

//part b. for airfoil of aspect ratio 10:
a11=0.088;//lift slope for finite wing per degree for aspect ratio 10(from example 5.17)
Cl2=a11*(a-a2)//lift coefficient at 2 degree
Cl22=a11*(a+0.5-a2) //lift coefficient at 2.5 degree
Dcl2=Cl22-Cl2 //change in lift coefficient for wing 2(aspect ratio 10)