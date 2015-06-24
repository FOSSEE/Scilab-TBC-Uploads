
//using Superposition Theorem
//consider E1 alone
E1=1.5
R1=(1+1)*2/(1+1+2)+2  //total resistance
I1=E1/R1  //current supplied
i1=I1/2  //current in branch AB from B to A
//consider E2 alone
E2=1.1
R2=(1+1)*2/(1+1+2)+1+1  //total resistance
I2=E2/R2  //current supplied
i2=I2/2  //current in branch AB from B to A
mprintf("Current through 2 ohm resistor=%f A", i1+i2)
