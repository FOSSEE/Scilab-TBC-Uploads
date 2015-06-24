//chapter-11,Example11_10,pg 507

Vi=1.3//input voltage

R2=10*10^3

R3=10*10^3

R8=10*10^3//potentiometer

B=1/3//wiper distance

V1=((R3*Vi)/(R3+(B*R8)))//output voltage-1

V2=-((R2*Vi)/(R1+((1-B)*R8)))//output voltage-2

printf("ouput voltage-1\n")

printf("V1=%.4f V\n",V1)

printf("ouput voltage-2\n")

printf("V2=%.4f V\n",V2)
