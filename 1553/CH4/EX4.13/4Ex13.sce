//Chapter 4 Ex 13

clc;
clear;
close;

//(i)
a=poly(0,'a');
b1=a/(3/4);      //equation(1)
b2=(22-(8*a))/5;   //equation(2)
for a=1:0.1:10
    if (a/(3/4))==((22-(8*a))/5) then
        break;
    end
end
mprintf("(i)The value of a is %.1f",a);

//(ii)
x=poly(0,'x');
for x=1:10
    if ((x/4)-((x-3)/6))==1 then
        break;
    end
end
mprintf("\n(ii) The value of x is %.0f",x);
