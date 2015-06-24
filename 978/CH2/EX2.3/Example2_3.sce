//chapter-2,Example2_3,pg 484

Aol=10*10^4//open loop gain

R2=10*10^3

R3=10*10^3

R1=100*10^3//input resistance

Vac=24//maximum input

Vo=(R2/R1)*Vac//output full scale

printf("output FS voltage\n")

printf("Vo=%.2f V\n",Vo)

Vth=0.6//threshold voltage

Vn=(Vth/Aol)//minimum input

printf("minimum input voltage\n")

printf("Vn=%.8f V\n",Vn)
