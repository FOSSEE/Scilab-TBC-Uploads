//inductance 
//given
clc
l=10//mils
t=0.2//mils
w=8//mils
Lt=5.08*l*(log(l/(w+t))+0.222*((w+t)/l)+1.19)//PH/mil
Lt=round(Lt*10)/10///rounding off decimals
disp(Lt,'the inductance for the given parameters')
