//EXAMPLE-6.12;PAGE-201
//voltage standin wave ratio
//given
clc
row=0.4
VSWR=(1+row)/(1-row)//voltage standing wave ratio
VSWR=round(VSWR*100)/100///rounding off decimals
disp(VSWR,'the voltage standing wave ratio')
