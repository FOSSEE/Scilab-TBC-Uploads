//Example 17.4//

//For 100g of doped silicon there will be
b=100;//ppb //Al by weight
c=10^9;//given
d=100;//g Al
a=(b/c)*d
mprintf("a = %e g Al",a)
e=26.98;//g/g.atom //atomic mass of aluminium
Al=a/e
mprintf("\nAl = %e g atom",Al)
f=28.09;//g/g.atom // atomic mass of Silicon
Si=(b-a)/f
mprintf("\nSi = %f g atoms",Si)
pAl=((Al)/(Si+Al))*100
mprintf("\npAl = %e  atomic percent",pAl)
