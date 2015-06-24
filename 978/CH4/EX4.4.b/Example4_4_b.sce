//chapter-4,Example4_4_b,pg 489

//initial conditions

b=1

Bi=0//initial value

Bf=1//final value

//intial state of outputs

y1i=bitcmp(bitor(b,Bi),1)

y2i=bitcmp(bitor(b,bitcmp(Bi,1)),1)

y3i=bitcmp(bitor(Bi,bitcmp(b,1)),1)

y4i=bitcmp(bitor(bitcmp(Bi,1),bitcmp(b,1)),1)

//final state of outputs

y1f=bitcmp(bitor(b,Bf),1)

y2f=bitcmp(bitor(b,bitcmp(Bf,1)),1)

y3f=bitcmp(bitor(Bf,bitcmp(b,1)),1)

y4f=bitcmp(bitor(bitcmp(Bf,1),bitcmp(b,1)),1)

printf("first: ")

printf("y1=%.f ",y1i)

printf("y2=%.f ",y2i)

printf("y3=%.f ",y3i)

printf("y4=%.f\n",y4i)

printf("next: ")

printf("y1=%.f ",y1f)

printf("y2=%.f ",y2f)

printf("y3=%.f ",y3f)

printf("y4=%.f",y4f)