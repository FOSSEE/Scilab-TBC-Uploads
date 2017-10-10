// exa 8.8 Pg 234
clc;clear;close;

// Given Data
Fmin=0;// N
Fmax=1000;// N
del=80;// mm
Do=25;// mm
n=30;// no. of turns
G=85;// kN/mm.sq.

k=(Fmax-Fmin)/del;// N/mm (Spring stiffness)
printf('\n Spring stiffness = %.1f N/mm',k)
// k=G*d/(8*C**3*n) (Spring stiffness)
C_cube_BY_d=G*10**3/(k*8*n);// 

function [C,d]=hitntrial(c3d,Do)
    for C=5:-0.1:4.5
        d=C**3/(c3d);
        Doo=d*C+C;
        if Doo<Do 
            break;
        end;
    end

endfunction;

[C,d]=hitntrial(C_cube_BY_d,Do)
printf('\n By hit and trial method and using value of C^3/d -')
printf('\n value of Spring Index, C = %.1f ',C)
printf('\n value of wire diameter, d = %.1f mm',d)
printf('\n But we adopt d=4 mm.')
d=4;// mm (adopted for design)
C=(C_cube_BY_d*d)**(1/3);// Spring index
printf('Hence, Spring Index = %.2f ',C)
Dm=C*d;// mm
printf('\n Mean coil diameter = %.2f mm', Dm)
Do=Dm+d;// mm
printf('\n Outside coil diameter = %.2f mm < 25 mm. Hence design is ok.', Do)
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
printf('\n Wahl''s correction factor = %.3f ',Kw)
tau=8*Kw*C*Fmax/(%pi*d**2);// N/mm.sq.
printf('\n Maximum shear stress = %.2f N/mm.sq.',tau)
