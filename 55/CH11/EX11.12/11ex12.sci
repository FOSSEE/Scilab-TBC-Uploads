x=poly(0,'x');
g=3*x^2-7*x+5
m=horner(g,2)  //value of polynomial at 2
n=horner(g,8)  //value of polynomial at 8
j=m-n
disp(n,"for n = ")
if(modulo(j,6)==0) then
mprintf('%i is congruent to %i(mod 6)',m,n)
end