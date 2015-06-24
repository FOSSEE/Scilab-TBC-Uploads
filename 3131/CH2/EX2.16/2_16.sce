clear all; clc;
disp("Ex 2_16")
p=sqrt(2^2+6^2+3^2)
printf('\n\nu_B = (2/%.0f)i + (6/%.0f)j + (3/%.0f)k',p,p,p)
disp("i.e. u_B = 0.286i + 0.857j + 0.429k")
a=0.286*0
b=300*0.857
c=0*0.429
q=a+b+c
printf('\n\nThe magnitude of F_AB = %.1f N',q)//Obtaned by taking dot product of  vector u_AB and vertical force F=300N
disp(" ")
disp("The Cartesian Vector Form of the force is: F_AB = (73.5i + 220j +110k) N")//Obtained by multilying magnitude of F_AB and the vector u_B
disp("The perpendicular component is: F_perp = (-73.5i + 80j -110k) N")//Obtained by subtracting force F_AB from vertical force F=300j N 
r=sqrt(300^2-257.1^2)
printf('\n\nThe magnitude of the perpendicular force is %.0f N',r)
