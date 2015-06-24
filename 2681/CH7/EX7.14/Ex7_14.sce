//inductance of circular spiral
//given
clc
N=10//number of turns
w=50//mils//sepration
s=20//mils//film width
d=2.5*N*(w+s)//
L=31.25*(N^2)*d//PH/mil
L=round(L*1D-3)/1d-3///rounding off decimals
disp(L*1d-3,'the resistance for the given parameter in nH/mil')//nH/mil(the value is different on book)
