//Chapter 4 Ex 4

clc;
clear;
close;
// from given statement we the equation as (4/21)x-(8/45)x=8
for x=1:700
    if ((4/21)*x-(8/45)*x)==8
        break;
    end
end
half=x/2;
mprintf("The required number is %d",half);
