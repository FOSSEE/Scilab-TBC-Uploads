//Chapter 4 Ex 9

clc;
clear;
close;

//(i)
x1=17.28/(2*3.6*0.2);
mprintf("(i)The value of x is %.0f",x1);

//(ii)
x2=364.824/(3794.1696+36.4824-3648.24);
mprintf("\n(ii)The value of x is %.0f",x2);

//(iii)
x3=poly(0,'x');
for x3=1:0.1:10
    if round(8.5-(5.5-(7.5+(2.8/x3)))*(4.25/0.04))==306
        break;
            end
end
mprintf("\n(iii)The value of x is %.1f",x3);
