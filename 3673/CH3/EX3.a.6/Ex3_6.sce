//Example 3_6 page no:121
clc
Rt=2+((3*(2+((2*2)/(2+2))))/(3+(2+((2*2)/(2+2)))))//total resistance
disp(Rt,"total resistance (in ohms)")
It=20/3.5
disp(It,"total current (in ampere)")
I1=1.43//current in branch cd
disp(I1,"current in branch cd (in A)")
//after interchanging the source voltage
Rt=3.23//total resistance
It=20/3.23//total current drawn
I2=1.43//current in branch ab
disp(I2,"current in branch ab (in A)")
disp("In both cases the ratio of input to response is the same")
