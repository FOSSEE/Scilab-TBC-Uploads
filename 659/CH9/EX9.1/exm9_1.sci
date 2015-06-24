//                  Example 9.1 
//Write a program with multiple functions that do not communicate- 
//data between them.

//Function1:printline()
funcprot(0);
function []=printline()    //contains no argument
    for i=1:35
        printf("%c",'-');
    end
    printf("\n");
endfunction
//Function2: value()
function []=value()        //contains no argument
    principal=input("Principal amount?");
    inrate=input("Interest rate?");
    period=input("Period?");
    sum1=principal;
    year=1;
    //Computation using while loop
    while(year<=period)
        sum1=sum1*(1+inrate);  //calculates principal amount after certain years
        year=year+1;
     end
     printf("%8.2f  %5.2f %5d %12.2f\n",principal,inrate,period,sum1);
endfunction
//Calling  functions
printline();
value();
printline();