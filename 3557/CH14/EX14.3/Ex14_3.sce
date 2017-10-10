//Example 14.3//
Ca=40.08;//amu //atomic mass of Calcium
O=16.00;//amu //atomic mass of oxygen
Si=28.09;//amu //atomic mass of Silicon
a=2;//Number of atoms
f1=(3*(Ca+O))/(3*(Ca+O)+(Si+a*O))
mprintf("f1 = %f",f1)
b=1;//given
f2=b-f1
mprintf("\nf2= %f",f2)
//Similarly
f3=(2*(Ca+O))/(2*(Ca+O)+(Si+a*O))
mprintf("\nf3= %f",f3)
f4=b-f3
mprintf("\nf4= %f",f4)
Mg=26.98;//amu //atomic mass of magnesium
c=3;//Number of atoms
f5=(3*(Ca+O))/(3*(Ca+O)+(a*Mg+c*O))
mprintf("\nf5= %f",f5)
f6=b-f5
mprintf("\nf6= %f",f6)
Mn=55.85;//amu //atomic mas of Magnese
f7=(4*(Ca+O))/((4*(Ca+O))+(a*Mg+c*O)+(a*Mn+c*O))
mprintf("\nf7 = %f",f7)
Al=26.98;//amu //atomic mass of aluminium
f8=((a*Al)+(c*O))/(4*(Ca+O)+(a*Mg+c*O)+(a*Mn+c*O))
mprintf("\nf8= %f",f8)
//Total mass of CaO
mcs=45;//kg
mc2s=11;//kg
i=8;//kg
j=27;//kg
mc=(f1*mcs)+(f3*j)+(f5*mc2s)+(f7*i)
mprintf("\nmc = %f kg",mc)
//Similarly
ma=(f6*mc2s)+(f8*i)
mprintf("\nma = %f kg",ma)
ms=(f2*mcs)+(f4*j)
mprintf("\nms = %f kg",ms)
t=(mc+ma +ms)
mprintf("\nt = %f percentage",t)
