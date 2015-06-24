clear all;
clc;
printf("\n Example 13.4");
diameter = [2 3 4 5 6];
number = [30 120 200 80 20];

function[x] = Sum_d1cube()
    sum = 0;
    i = 1;
    while (i <= 5)
        sum = sum + number(i)*(diameter(i))^3;
        i = i+1;
    end
    x = sum;
    funcprot(0);
endfunction

function[y]=sum_d1square()
    sum1 = 0;
    j=1;
    while(j<=5)
        sum1 = sum1 + number(j)*(diameter(j))^2;
        j= j+1;
    end
    y = sum1;
    funcprot(0);
endfunction

function[z]= ds()
    z = Sum_d1cube()/sum_d1square();
    funcprot(0);
endfunction
printf("\n Mean droplet size = %.2f mm",ds());

        
         