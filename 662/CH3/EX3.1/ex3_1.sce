                             //Example 3.1
//unsigned integer operands
a=10
b=3
printf("\n\na+b=%d", a+b);
printf("\na-b= %d", a-b);
printf("\na*b= %d", a*b);
printf("\na/b= %d", a/b);
ab = modulo(a,b);                //in scilab modulo() function is used instead of % operator of c.
printf("\n a\b= %d",ab);

v1=12.5
v2=2.0
printf("\n\nv1+v2=%f", v1+v2);
printf("\nv1-v2= %f",v1-v2);
printf("\nv1*v2= %f", v1*v2);
printf("\nv1/v2= %f", v1/v2);

// in scilab variables are not stored as thier ASCII values as in case of c.
//so for calculations including characters is done with the help of ascii().
c1='P'
c2='T'
printf("\n\nc1 = %d", ascii(c1));
c= ascii(c1)+ascii(c2);
printf("\nc1 + c2 = %d",c);
c=c+5;
printf("\nc1 + c2 + 5 = %d", c);
c=c+ascii('5');
printf("\n Here 5 is character, hence diff from statement  above:");
printf("\nc1 + c2 + 5  = %d",  c);   

 