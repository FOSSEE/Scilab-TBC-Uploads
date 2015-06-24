            //Example 3.22
clc
//Assignment expressions

printf("Expression             Value")
i=int(3.3);
printf("\ni=3.3                  %d", i);
i=int(3.9);
printf("\ni=3.9                  %d", i);
i=int(-3.9);
printf("\ni=-3.9                 %d \n", i);

j=5;
i=j;
printf("\nExpression                Value");
printf("\ni = j                        %d", i);
i=j / 2;
printf("\ni = j / 2                    %d", i);
i=2 * j / 2;                                        //left-to-right associativity
printf("\ni = 2 * j / 2                 %d", i);
i=2*int (j / 2);                                //truncated division, followed by multiplication
printf("\ni = 2*int (j / 2)             %d \n", i);

printf("\nExpression                Value");
i='x';
printf("\ni = x                     %d" , ascii(i));
i='0';
printf("\ni = 0                      %d" , ascii(i));
i=(ascii('x')-ascii('0'))/3;
printf("\ni = (x-0)/3                %d" , i);

i=(ascii('y')-ascii('0'))/3;
printf("\ni = (y-0)/3                 %d \n" , i);
