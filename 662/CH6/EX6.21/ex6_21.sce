                //Example 6.21
//Repeated Compound Interest calculations with error trapping

//read initial value for the principal
printf("Please enter the value for the principal (p) ");
printf("\n( To end program,enter 0 for the principal ) : ")
p=scanf("%f");
if (p<0) then
    printf("\n ERROR. Please try again:");
    p=scanf("%f");
end
while p > 0            //main loop
    //read remaining input data
    printf("Please enter a value for the interest rate(r): ");
    r=scanf("%f");
    if (r<0) then
        printf("\n ERROR. Please try again:");
        r=scanf("%f");
    end

    printf("Please enter a value for the numbers of years(n): ");
    n=scanf("%f");
    if (n<0) then
        printf("\n ERROR. Please try again:");
        n=scanf("%f");
    end

    //calculate i, then f
    i = r/100;
    f=p*( 1+ i )^n;
    
    //display the output
    printf("The final value (F) is: %.2f\n", f);
    
    //read principal for the next pass
    printf("\n\nPlease enter the value for the principal (p) ");
    printf("\n( To end progress,enter 0 for the principal ) : ")
    p=scanf("%f");
    if (p<0) then
        printf("\n ERROR. Please try again:");
        p=scanf("%f");
    end
end                //end while loop
