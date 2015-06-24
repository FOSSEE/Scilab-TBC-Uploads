clc
clear
disp("example 4 17")
v1=132//line voltage at primary
v2=11//line voltage at secondary
p=10 //power
pf=0.8 //power factor
mva=p*(complex(pf,sind(acosd(pf))))
printf(" MVA rating of secondary = %dMVA =%d+%djMVA \n ",p,mva,imag(mva))
printf("\n since the power factor at primary terminals is unity,rating of primary need be %dMVA only \n the tertiary will supply capacitor curren.since p.f is to be raised to 1 ,the mav compensation needed is 6MVA so rating of teritiary is %dMVA",mva,imag(mva))