clc;
// page no 358
// prob no 9.6
m=21;
// The correct number of check bits is the smallest number that satisfy the equation 2^n  >= m+n+1;
for n=1:1:10 // we choose range of 1 to 10
    a=m+n+1;
    b=2^n;
    if(b>=a)
        disp(n,'hammming bits are required')
        break;
    end
end