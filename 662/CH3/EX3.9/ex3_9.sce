            //Example 3.9
//arithmetic expression evaluation 2*((i % 5)*(4+(j-3)/ (k+2)))
i=8;
j=15;
k=4;
u=modulo(i,5);
v=4+(j-3)/(k+2);
w=2*(u*v);
printf("\n w = 2*(modulo(i , 5)*(4+(j-3)/ (k+2))) = %d \n",w);