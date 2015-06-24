//reflection coefficent
//given
clc
S=2//voltage standing wave ratio(VSWR)
Zo=50//ohm
row=((S-1)/(S+1))
row=round(row*1000)/1000///rounding off decimals
disp(row,'the value of reflection coefficent as modulus row')

