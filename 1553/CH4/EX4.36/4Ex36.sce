//chapter 4 Ex 36

clc;
clear;
close;
expenses=360; expCut=3; numdaysCut=4;

for n=1:99
    if n^2+4*n-480==0
        break;
    end
end
mprintf("Mr. Bhaskar is on tour for %d days",n);
