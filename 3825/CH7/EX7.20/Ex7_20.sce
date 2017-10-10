clc
h1=3025
v1=0.1255
s1=6.7696
h2=2875.4
v2=2.172
s2=7.8349
P1=20*10^5
PO=10^5
u1=h1-(P1*10^-3*v1)
u2=h2-(PO*10^-3*v2)
mprintf("u1=%fkJ/kg\n",u1)//ans vary due to roundoff error
mprintf("u2=%fkJ/kg\n",u2)//ans vary due to roundoff error
TO=298
mprintf("phi1-phi2=%fkJ/kg",(u1+(PO*v1*10^-3)-(TO*s1))-(u2+(PO*v2*10^-3)-(TO*s2)))//ans in textbook is wrong


