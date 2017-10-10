//Example 17.14//

b=1.008;//g //atomic mass of Hydrogen
c=28.09;//g //atomic mass of Silicon
a=100;//given
e=0.2;//given
f=0.8;//given
a2=f*c //(cross multiplying)
//mprintf("a2 = %f ",a2)
a3=b*a //(cross multiplication)
//mprintf("a3 = %f ",a3)
a4=e*b //(cross multiplication)
//mprintf("a4 = %f g Si",a4)
a5=e*a3//multiplication
//mprintf("a5 = %f g Si",a5)
x=a5/(a2-a4)
mprintf("x = %f g H",x)
x1=0.889;//g H
x2=a-x1
mprintf("\nx2 = %f g Si",x2)
a7=2.3; //g cm^-3 //density of pure amporhous silicon
//the volume occupied by the silicon will be
V=x2/a7
mprintf("\nV = %f cm^3",V)
//Therefore the density of the alloy will be
p=a/V
mprintf("\np = %f g cm^-3",p)
//which is an increase of
a1=((p-a7)/(a7))*100
mprintf("\na1 = %f percent ",a1)
