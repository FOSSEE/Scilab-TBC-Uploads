//voltage standing wave ratio
//given
clc
clear 
format
Vr=0.37//volts
Vi=1//volts
row=Vr/Vi
if(row>=0)
VSWR=(1+row)/(1-row)
VSWR=round(VSWR*10)/10///rounding off decimals
disp(VSWR,'THE voltage standing wave ratio is:')
else
disp('not possible')
end
