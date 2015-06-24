//voltage standing wave ratio
//given
clc
LEMg=4.82//cm
d1_d2=0.7//cm
VSWR=LEMg/(%pi*d1_d2)//VSWR
VSWR=round(VSWR*1000)/1000///rounding off decimals
disp(VSWR,'the voltage standing wave ratio:')
