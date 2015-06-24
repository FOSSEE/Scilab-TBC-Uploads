clear
clc

z1=complex(2,1)
z2=complex(2,3)
z3=complex(1,2)

ib= 40 * exp (%i * -1 * acos (.8))
ic= 60 * exp (%i * -1 * acos (.6))

i1=((ib*z2)+((ib+ic)*z3))/(z1+z2+z3)
i2=i1-ib
i3=i2-ic

mprintf("\n Current A to B in Ampere")
disp(round(i1*100)/100)
mprintf("\n Current B to C in Ampere")
disp(round(i2*100)/100)
mprintf("\n Current A to C in Ampere")
disp(round(-i3*100)/100)
