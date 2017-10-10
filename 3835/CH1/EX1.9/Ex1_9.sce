clear
//
lal=7.5
lcu=6
rcu=0.017*(10**-6)
ral=0.028*(10**-6)
d=(10**-6)
a=((3.14*d))/(4)
Ral=(lal*ral)/(a)
printf("\n R= %0.1f  ohm",Ral)
ial=3
pv=Ral*ial
Rcu=pv/(2)
printf("\n Rcu")
a=(rcu*lcu)/(Rcu)
dcu=(((a*4)/3.14)**0.5)
printf("\n dcu= %e  nm",dcu)
