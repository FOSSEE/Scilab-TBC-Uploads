clc
h1=178.8372
hg=h1
h4=75.1013
h3=h4
Eabs=211
m=Eabs/(h1-h4)
mprintf("m=%fkg/min\n",m)//ans vary due to roundoff error
Etrans=300
W=Etrans-Eabs
mprintf("W=%fkJ/min\n",W)//ans vary due to roundoff error
COPR=Eabs/W
mprintf("COPR=%f\n",COPR)//ans vary due to roundoff error

