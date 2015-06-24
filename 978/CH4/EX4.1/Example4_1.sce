//chapter-4,Example4_1,pg 488

//it is a half-adder circuit with the output 'a' and carry 'c' given by the boolean equations

b1=1//input-1

b2=1//input-2

a=bitand(b1,bitcmp(b2,1))+bitand(bitcmp(b1,1),b2)//sum

c=bitand(b1,b2)//carry

printf("sum\n")

printf("a=%.f\n",a)

printf("carry\n")

printf("c=%.f",c) 