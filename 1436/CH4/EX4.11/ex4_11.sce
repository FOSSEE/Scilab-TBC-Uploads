// Example 4.11, page no-213
clear
clc

//(a)
v_obj=2/1000
wt=1.5
dx=wt/v_obj
sg=dx/1000
printf("(a)\nSpecific Gravity = %.2f",sg)

//(b)
sgl=0.8
dens=800
W1=dens*v_obj-wt
printf("\n(b)\nW1 = %.1f kg",W1)

//(c)
sg2=1.2
dens2=1200
W2=dens2*v_obj-wt
printf("\n(c)\nW2 = %.1f kg",W2)
