//Chapter-15, Example 15.11, Page 500
//=============================================================================
clc
clear
//CALCULATIONS
x1=base2dec(['1001'],2)//converting binary to decimal
x2=base2dec(['0100'],2)//converting binary to decimal
x3=x1+x2;
if(x3>9)
    x3=x3+6;
    z1=dec2base(x3,2)//converting decimal to binary
else
    z1=dec2base(x3,2)//converting decimal to binary
end
disp(z1)
//note:last 4 bits represent 3 and 5th bit prefixed with 3 bits will look as 1.hence the combined result will be 13
//=================================END OF PROGRAM=======================================================================================================
