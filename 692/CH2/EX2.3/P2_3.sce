//EXAMPLE 2.3, Basic ops on unequal length sequence
clear;
clc;
c=[3.2 41 36 -9.5 0];
disp(c,'c = ');
g=[-21 1.5 3];
disp(g,'g = ');
a=length(g);
b=length(c);
i=0;
    while(i<b-a)
        g(b-i)=0;
        i=i+1;
    end
w4=g.*c;
disp(w4,'The product of two sequences is =');
w5=c+g;
disp(w5,'The addition  of two sequences is =');
