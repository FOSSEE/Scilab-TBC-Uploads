//find max stress intensity and shear stress at joint
clc
//given
//solution
//refer figure 5.33
H=500//mm
B=200//mm
h=450//mm
b=15//mm
F=400000//N
I=645*10^6//mm^4
Tmax=(F/(I*b))*[(B/8)*(H^2-h^2)+(b*h^2/8)]//N/mm^2//max intensity of shear stress
Fj=F/(8*I)*(H^2-h^2)//stress at joint
FJ=F/(8*I)*(H^2-h^2)*(B/b)//stress at ujnction
printf("the stress at jointf is,%f N/mm^2\n",Fj)
printf("the stress at junction is ,%f N/mm^2\n",FJ)
printf("the max shear stress is ,%f N/mm^2 ",Tmax)

