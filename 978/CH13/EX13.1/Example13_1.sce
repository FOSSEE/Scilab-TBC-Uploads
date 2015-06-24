//chapter-13,Example13_1,pg 405

t1=0.1*10^-6//time span for voltage

//voltage switching

V1=0.5//level-1

V2=5//level-2

//current switching

I1=0//level-1

I2=10*10^-3//level-2

t2=1*10^-6//time span for current

DR=(((V2-V1)/t1)/((I2-I1)/t2))

printf("dissipation ratio\n")

printf("DR=%.2f ohm\n",DR)

printf("DR is quite large indicating noise interference by capacitive coupling")