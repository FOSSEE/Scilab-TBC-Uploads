clc,clear
printf('Example 4.15\n\n')

P=30*1000/3 //power per phase
V_ph=400/sqrt(3) //phase voltage
R=(V_ph)^2/P //resistance of strip
t=0.025*10^-2 //thickness of strip
S=1.03*10^-6 //specific resistance of nichrome alloy
l_by_w = R*t/S //because R=specific_resistance*l/(w*t)                                          (i)

k=0.6;e=0.9; //radiating efficiency and emissivity
T1=1100+273; T2=700+273; //temperatures of wire and charge
H=5.72*k*e*(T1^4-T2^4)/100^4 //heat dissipated from surface

//surface_area = 2*w*l 
//Since, heat dissipated = Power input ; surface_area = P/H
surface_area = P / H
wl=surface_area /2 //product of w and l                                       (ii)

//dividing expression(ii) by expression(i)
w=sqrt(wl/l_by_w)
printf('Width of strip = %.2f mm',w*1000)
