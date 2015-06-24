// Calculate proeutectoid ferrite and eutectoid ferrite in 0.6% steel
clc
a = 0 // limiting value
b = 0.8 // limiting value
c = 0.6 // percentage composition of carbon
f = 0.88 // fraction of ferrite in a eutectoid steel
printf("\n Example 7.5")
f_pro_alpha = (b-c)/(b-a)
f_perlite = 1 - f_pro_alpha
f_eut = f*f_perlite
printf("\n Composition of proeutectoid ferrite is %0.2f",f_pro_alpha)
printf("\n Composition of eutectoid ferrite is %0.2f",f_eut)
