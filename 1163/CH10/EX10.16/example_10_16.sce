clear;
clc;
disp("--------------Example 10.16---------------");
x=poly(0,"x");
// a) x+1
g=x^1+1;
t=0;
// compute t
while(%T)
    q=(x^t+1)/g;
    if(q == 1)
        break;
    end
    t=t+1;
end
printf("a. t = %d . This is a very poor choice for a generator. Any two errors next to each other cannot be detected.\n\n",t); // display result
// b) x^4+1
g=x^4+1;
t=0;
// compute t
while(%T) 
    q=(x^t+1)/g;
    if(q == 1)
        break;
    end
    t=t+1;
end
printf("b. t = %d .This generator cannot detect two errors that are four positions apart. The two errors can be anywhere, but if their\ndistance is %d, they remain undetected.\n\n",t,t); // display result
// c) x^7+x^6+1
g=x^7+x^6+1;
printf("c. This is a good choice for this purpose.\n\n"); // display result
// d) x^15+x^14+1
t=32768; // very large to compute
printf("d. This polynomial cannot divide any error of type x^t + 1 if t is less than %d. This means that a codeword with two isolated\nerrors that are next to each other or up to %d bits apart can be detected by this generator.",t,t); // display result
