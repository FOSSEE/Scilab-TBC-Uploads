clc 
 
//given that
m = 100 //mass of ball in gram
l = 1 // length of box in m
h = 6.63e-34 // Plank constant
printf("\nExample 2.29")
for n = 1:3
    E = (n^2*h^2)/(8*m*1e-3*l^2*1.6e-19)
     printf("\n  Energy state  E%d of ball is %e eV",n,E)
end
printf("\n As energy difference is very small so we cannot see energy states.\n")
