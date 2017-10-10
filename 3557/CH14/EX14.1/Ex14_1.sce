//Example 14.1//

//(a)=The mass of each component will be
a=1.00;//m^3 //composite
b=0.70;//m^3 //Vol % E-glass fibers
c=a-b
mprintf("c = %f m^3",c)
d=2.54;//Mg/m^3 //density Of E-glass
mg=d*b
mprintf("\nmg = %f Mg",mg)
e=1.1;//Mg/m^3 //density of epoxy
me=e*c
mprintf("\nme = %f Mg",me)
w=(mg/(mg+me))*100
mprintf("\nw = %f percent",w)
//(b)= The density will be given by
p=mg+me
mprintf("\np = %f Mg/m^3",p)
