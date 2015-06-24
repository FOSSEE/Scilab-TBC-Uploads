
// Ex2_3

clc;

// Given:
l=3;
f=3;
s=1/2;

// Solution:
I=l-s;// total angulr momentum
P=(-1)^(l);//nuclear parity
mm=(I-2.293*(I/(I+1)));// in nuclear magneton

printf("\n Nuclear spin of the nucleus is %f",I)
if P>0 then
    printf(" (+) ")
else
    printf(" (-) ")
end

printf("\n Magnetic moment is = %f in nuclear magneton",mm)

