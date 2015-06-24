
// Ex2_4

clc;

// Given:

l=4;
g=4;
s=1/2;

// Solution:
I=l+s;// total angulr momentum
P=(-1)^(l);//nuclear parity
mm=(I+2.293);// for odd proton and I=l+s in nuclear magneton

printf("\n Nuclear spin of the nucleus is %f",I)
if P>0 then
    printf(" (+) ")
else
    printf(" (-) ")
end
printf("\n Magnetic moment is = %f in nuclear magneton",mm)
