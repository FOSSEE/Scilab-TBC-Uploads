//             Example 9.2 
//Modify Example 9.1 to include arguments in function calls.

funcprot(0);
function []=printline(ch)         //function with argument ch
    for i=1:52
        printf("%c",ch);
    end
    printf("\n");
endfunction
function []=value(p,r,n)         //function with argument p,r,n
    sum1=p;
    year=1;
    while(year<=n)
        sum1=sum1*(1+r);
        year=year+1;
     end
     printf("%f\t%f\t%d\t%f\n",p,r,n,sum1);
endfunction
printf("Enter principal amount,interest rate,and period \n[Enter in single line seperated by space]");
[principal,inrate,period]=scanf("%f %f %d");  //read from standard input 
//Calling  functions
printline('z');
value(principal,inrate,period);
printline('c');