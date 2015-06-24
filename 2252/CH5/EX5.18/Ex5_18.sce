
mu_not=4D-7*%pi
//calculating pull on the armature
mu_r=300//rel permeability of iron
AT=2000//total ampere turns
li=50D-2//length of iron path
lg=1.5D-3//length of air gap
B=AT/(li/(mu_not*mu_r)+.796*lg*10^6)
A=3D-4//area of each pole shoe
x=B^2*A/(2*mu_not)//pull on the armature at each pole
p=2*x
mprintf("Total pull due to both the poles=%f N\n",p)
//considering the gap closes to .2 mm
lg=.2*1D-3
B=AT/(li/(mu_not*mu_r)+.796*lg*10^6)
x=B^2*A/(2*mu_not)
p=2*x
mprintf("When the gap closes to .2 mm, total force needed due to both the poles, to pull the armature away=%f N",p)
//answer vary from the textbook due to round off error


