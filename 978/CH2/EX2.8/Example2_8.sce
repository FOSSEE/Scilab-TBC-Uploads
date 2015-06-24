//chapter-2,Example2_8,pg 485

R1=10*10^3

R2=10*10^3

V1=10//input voltage-1

V2=10//input voltage-2

R31=10*10^3//R3,case-1

Vo1=((1+(R2/R1)+(R2/R31))*V1)-(R2/R1)*V2//output voltage case-1

printf("output voltage case-1\n")

printf("Vo1=%.2f V\n",Vo1)

R32=100*10^3//R3,case-2

Vo2=((1+(R2/R1)+(R2/R32))*V1)-(R2/R1)*V2//output voltage case-2

printf("output voltage case-2\n")

printf("Vo2=%.2f V\n",Vo2)

R33=1000*10^3//R3,case-3

Vo3=((1+(R2/R1)+(R2/R33))*V1)-(R2/R1)*V2//output voltage case-3

printf("output voltage case-3\n")

printf("Vo3=%.2f V",Vo3)
