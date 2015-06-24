//chapter-4,Example4_5,pg 489

//if A8,B8,C8,D8 is the binary in 8421 code, for 12 this would be 1100(DCBA)

//in 8421-code
A8=0

B8=0

C8=1

D8=1

//in 2421-code

D2=D8

C2=bitor(C8,D8)

B2=bitor(B8,D8)

A2=A8

printf("2421-code for 12 is\n")

printf("%.f ",D2)

printf("%.f ",B2)

printf("%.f ",C2)

printf("%.f ",A2)
