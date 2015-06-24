//Chapter-15, Example 15.6, Page 497
//=============================================================================
clc
clear
//CALCULATIONS
x1=base2dec(['110','10'],2)//converting binary to decimal
x2=base2dec(['1111','110'],2)//converting binary to decimal
y1=(x1(1))/(x1(2));//dividing
y2=(x2(1))/(x2(2));//dividing
z1=dec2base(y1,2);//converting decimal to binary
[f,e]=frexp(y2);//separting exponent and mantissa
disp(f)//mantissa
disp(e)//exponent
f=f*2;
g=floor(f);//rounding to nearest integer
disp(g);
z2=dec2base(e,2);//converting decimal to binary--------->before point part of resultant binary number
disp(z2)
g1=dec2base(g,2);//converting decimal to binary--------->after point part of  resultant binary number
disp(g1)
//NOTE:here floating point decimal cannot be directly converted to binary for second case.Hence computed to binary
//=================================END OF PROGRAM=======================================================================================================
