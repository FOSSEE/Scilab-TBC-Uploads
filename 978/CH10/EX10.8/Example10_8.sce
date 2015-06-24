//chapter-10,Example10_8,pg 503

R1=120//resistance of arm-1

R2=120//resistance of arm-2

R3=120//resistance of arm-3

R4=121//resistance of arm-4

Rm=100//meter resistance

Vs=6//source voltage

n=1*10^-3//meter sensitivity

Vm=Vs*((R1/(R1+R2))-(R3/(R3+R4)))//voltage across meter

Rb=(R1*R2)/(R1+R2)+(R3*R4)/(R3+R4)//thevenised bridge resistance

Ig=(Vm/(Rb+Rm))//current through galvanometer

D=Ig*10^6

printf("deflection in meter\n")

printf("D=%.2f mm\n",D)
