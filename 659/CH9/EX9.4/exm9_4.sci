//             Example 9.4 
//Write a program with function power that computes x raised to the power y.
funcprot(0);
function p = power(x,y)
     p=1.0;               // x to power 0
    if((y>=0)) then
        while(y)         //computes positive powers
            p=p*x;
            y=y-1;
        end
    else
        while(y)       //computes negative powers
            p=p/x;
            y=y+1;
        end
    end
endfunction
disp("Enter x,y:");
disp("[Enter in single line seperated by space] ");
[x,y]=scanf("%d %d");    //input using scanf function

//calling power() function and printing its output
printf("%d to the power %d is %f",x,y,power(x,y));
