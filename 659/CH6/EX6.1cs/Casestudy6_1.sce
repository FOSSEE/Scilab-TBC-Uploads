//                  Case Study:-Chapter 6, Page No:176
//             1.Table of Binomial Coefficients

MAX=10;
printf("mx");
for m=0:10
    printf("%4d",m);
end
printf("\n-----------------------------------------------\n");
m=0;
//print the table of binomial coefficients for m=10
//Computation using while loop
while(m<=MAX)
    printf("%2d",m);
    x=0;
    binom=1;
    while(x<=m)
        if(m==0|x==0)
            printf("%4d",binom);    //Print the result i.e. binom
        else
            binom=binom*(m-x+1)/x;  //compute the binomial coefficient
            printf("%4d",binom);    //Print the result i.e. binom
        end
        x=x+1;
    end
    printf("\n");
    m=m+1;
end
printf("-----------------------------------------------\n");
