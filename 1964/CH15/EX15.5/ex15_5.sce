//Chapter-15, Example 15.5, Page 496
//=============================================================================
clc
clear
//CALCULATIONS
x1=base2dec(['1101','1100'],2)//converting binary to decimal
x2=base2dec(['1000','101'],2)//converting binary to decimal
x3=base2dec(['1111','1001'],2)//converting binary to decimal
y1=(x1(1))*(x1(2));//multiplying
y2=(x2(1))*(x2(2));//multiplying
y3=(x3(1))*(x3(2));//multiplying
z1=dec2base(y1,2)//converting decimal to hexadecimal
z2=dec2base(y2,2)//converting decimal to hexadecimal
z3=dec2base(y3,2)//converting decimal to hexadecimal
disp(z1)
disp(z2)
disp(z3)
//=================================END OF PROGRAM=======================================================================================================
