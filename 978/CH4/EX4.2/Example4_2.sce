//chapter-4,Example4_2,pg 489

//the circuit is that of a half subtractor

//case-1

b1=1//input-1

B1=0//input-2

d1=bitand(b1,bitcmp(B1,1))+bitand(B1,bitcmp(b1,1))//difference

r1=bitand(b1,bitcmp(B1,1))//borrow

//case-2

b2=1

B2=1

d2=bitand(b2,bitcmp(B2,1))+bitand(B2,bitcmp(b2,1))

r2=bitand(b2,bitcmp(B2,1))

printf("difference case-1\n")

printf("d1=%.f\n",d1)

printf("difference case-2\n")

printf("d2=%.f\n",d2)

printf("borrow case-1\n")

printf("r1=%.f\n",r1)

printf("borrow case-2\n")

printf("r2=%.f\n",r2)