//                  Example 9.3 
//Modify Example 9.2's function value() to return result and extend versatility of the function  
//printline by taking the lenth of line as an argument
function []=printline(ch,len)
    for i=1:len
        printf("%c",ch);
    end
    printf("\n");
endfunction
function [amount]=value(p,r,n)   //returns amount
    sum1=p;
    year=1;
    while(year<=n)
        sum1=sum1*(1+r);
        year=year+1;
     end
     amount=sum1;
endfunction
printf("Enter principal amount,interest rate,and period\n[Enter in single line seperated by space]");
[principal,inrate,period]=scanf("%f %f %d");
//Calling  functions
printline('*',52);
amount=value(principal,inrate,period);
printf("%f\t%f\t%d\t%f\n",principal,inrate,period,amount);
printline('=',52);