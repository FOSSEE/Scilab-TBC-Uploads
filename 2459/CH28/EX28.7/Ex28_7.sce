// chapter28
// example28.7
//page606

printf("Y = A . B + A . ( B + C ) + B . ( B + C ) \n")
printf("By thoerem 14 \n")
printf("Y = A . B + A . B + A . C + B . B + B .C \n")
printf("By theorem 6 \n")
printf("Y= A . B + A . B + A . C + B + B .C \n")
printf("By theorem 5 \n")
printf("Y = A . B + A . C + B + B . C \n")
printf("Factor B out of last 2 terms \n")
printf("Y = A . B + A . C + B . ( 1 + C ) \n")
printf("Apply cummulative law and theorem 7 \n")
printf("Y = A . B + A . C + B . 1 \n")
printf("Apply theorem 2 \n")
printf("Y = A . B + A . C + B \n")
printf("Factor B out of first and third terms \n")
printf("Y = B . ( A + 1 ) + A . C \n")
printf("Apply theorem 7 \n")
printf("Y = B . 1 + A . C \n")
printf("Apply theorem 2 \n")
printf("Y = B + A . C \n")
