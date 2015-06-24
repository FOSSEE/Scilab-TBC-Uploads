//chapter-3,Example3_5,pg 488

//enter binary values only(1bit)

a=input("enter value of a")//input-1

b=input("enter value of b")//input-2

c=input("enter value of c")//input-3
    
x=bitcmp(bitand(a,b),1)

y=bitor(x,c)//final output

printf("\noutput\n")

printf("y=%.2f\n",y)

printf(" verify from truth table\n")

printf("a  b  c          y\n")

printf("0  0  0          1\n")

printf("0  0  1          1\n")

printf("0  1  0          1\n")

printf("0  1  1          1\n")

printf("1  0  0          1\n")

printf("1  0  1          1\n")

printf("1  1  0          0\n")

printf("1  1  1          1\n")