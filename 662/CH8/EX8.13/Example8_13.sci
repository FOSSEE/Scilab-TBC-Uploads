//Programming Example 8.13
//simple compound interest problem

function[]=mainCI()
    //read input data(including prompts)
    printf("Please enter a value for the principle:(p)");
    p=scanf("%f");
    printf("Please Enter a value for the interest rate(r): ")
    r=scanf("%f");
     printf("Please Enter a value for the number of years(n): ")
    n=scanf("%f");
    
    //calculate i, then f
    i= r/100;
    f=p*(n^(1+i));
    //display the output
     printf("\n The final value(F) is:  %.2f\n", f);
endfunction

//calling routine
mainCI();