
//Chapter-10,Example10_18,pg10_57
Vl=1000
f=50
K=3.6
R2=0.01
X2=0.2
E1line=1000
E1=E1line/sqrt(3)
E2=E1/K
//at start,s=1
I2=160.37/sqrt((R2^2)+(X2^2))
pf=R2/sqrt((R2^2)+(X2^2))
printf("rotor current at start\n")
printf("I2=%.2f A\n",I2)
printf("rotor power factor\n")
printf("pf=%.3f lagging (answer in book is wrong)\n",pf)
//at s=0.03
s=0.03
I2r=s*160.37/sqrt((R2^2)+((s*X2)^2))
printf("rotor current at slip 0.03\n")
printf("I2r=%.2f A\n",I2r)
I2=200
R21=sqrt(((E2/I2)^2)-(X2^2))
Rex=R21-R2
printf("external resistance \n")
printf("Rex=%.4f ohm/ph (answer in book is wrong)",Rex)
