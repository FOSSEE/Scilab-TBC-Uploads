clear
//given
//page no 379
//
//find the gallons of water it is neccasry to pump
x=160.
h=2600.
t=60.
//part (a)
//water temperaute rise in 15 deg
Cs=x*h
printf("\n part a")
Hcs=Cs/t
//absorbs per minutes is 15
Aw=Hcs/15.
//gals of water per min 8.33
G=Aw/8.33
printf("\n \n amount of water %.2f gpm",Aw)
printf("\n \n amount of water %.2f gpm",G)
printf("\n partb")
//pound of water required to absorb is 45 deg
Aw1=Hcs/45.
//gallon per water required per min 8.33
G1=Aw1/8.33
printf("\n \n amount of water required of 45 deg %.2f gpm",Aw1)
printf("\n \n gallon of water required of 45 deg %.2f gpm",G1)
