            //Example 3.30
//Solve the roots of a quadratic equation: ax^2 + bx + c=0
funcprot(0);
function[]=mainsol()
    //read values for a, b and c
    printf("\nEnter a :");
    a=scanf("%f");
    printf("\nEnter b :");
    b=scanf("%f");
    printf("\nEnter c :");
    c=scanf("%f");

    root=sqrt( b * b - 4*a*c);
disp(root);
    x1=(-b+root)/(2 * a);
    x2=(-b-root)/(2 * a);
    //Display the value of a,b,c ,x1 and x2
    printf("\na = %f, b = %f, c = %f,\n\t x1 = %f and x2 = %f\n", a, b ,c, x1, x2);
endfunction

//Calling routine
mainsol();