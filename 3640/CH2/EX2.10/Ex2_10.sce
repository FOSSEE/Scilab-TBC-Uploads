clc
xd=1 //in ohms per unit
xd1=0.3 //in ohms per unit
xd2=0.2 //in ohms per unit
Td2=0.03 //time in seconds
Td1=1 //time in seconds
MVA=100 //rating in mega volt ampere
V=16000 //voltage in volts
I2pu=1/xd2
mprintf("Ipú́=%dper unit\n",I2pu)
Ib=(MVA*(10^6))/(sqrt(3)*V)
mprintf("Ib=%fA\n",Ib)//ans may vary due to roundoff error
mprintf("Í́=%fA\n",I2pu*Ib)//ans in textbook is wrong
I1=1/xd1 //current in per unit
mprintf("Í=Efo/xd́=%fper unit\n",I1)//ans may vary due to roundoff error
Iss=1/xd//current in per unit
mprintf("Iss=Efo/xd=1 per unit\n")
t=2/60 //time in seconds
mprintf("I=%fper unit\n",(I2pu-I1)*exp(-t/Td2)+(I1-Iss)*exp(-t/Td1)+1)//ans may vary due to roundoff error
t=10 //time in seconds
mprintf("I=%fper unit\n",(I2pu-I1)*exp(-t/Td2)+(I1-Iss)*exp(-t/Td1)+1)//ans may vary due to roundoff error



