                        //Programming Example 6.22
//Solution for an algebraic equation

flag=%T;        //%T and %F represent boolean TRUE and boolean FALSE respectively
count=0;
//read input parameters
printf("Initial guess:  ");
guess = scanf("%f");
while (flag)                                //begin the main loop
    count=count+1;
    if (count == 50) then flag=%F; end
    test = 10 -3 *guess * guess;
    if ( test > 0) then                    //another iteration
        root = test ^ 0.2;
        printf("\n Iteration number: %2d", count);
        printf("              x = %7.5f", root);
        Error = abs(root - guess);

        if ( Error > 0.00001) then guess = root;            //repeat the calcuation
        else                                                                //display the final answer
            flag = %F;
            printf("\n\nRoot = %7.5f", root);
            printf("           Number of iterations : %2d", count);
        end
    else                                       //error message
        flag=%F;
        printf("\nNumber out of range - try another initial guess");
    end
end
if ((count == 50) & (Error > 0.00001)) then                //another error message
    printf("\n\nConvegence not obtained after 50 iterations");
end
