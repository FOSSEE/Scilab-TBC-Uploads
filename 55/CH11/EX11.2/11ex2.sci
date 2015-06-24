disp('Division Algorithm')
a=4461;  //dividend
b=16;    //divisor
r=modulo(a,b)  //remainder
k=fix(a/b)    //quotient
j=b*k+r  //dividend=divisor*quotient+remainder

a=-262;  //dividend
b=3;    //divisor
k=fix(a/b)  //remainder
r=modulo(a,b)    //quotient
j=b*k+r  //dividend=divisor*quotient+remainder
disp('a and j have equal values.Hence division algorithm is proved')