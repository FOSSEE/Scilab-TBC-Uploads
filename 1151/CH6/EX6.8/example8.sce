// f i r s t e l ement i n any row o f r o u t h s t a b u l a t i o n i s z e r o
clc;s=%s
m=s^5+2*s^4+2*s^3+4*s^2+11*s+10;
r= coeff (m); // Ex t r a c t s the c o e f f i c i e n t o f the po l ynomi a l
n= length (r);
routh = routh_t (m)
disp (routh ," r outh=")
printf (" since there are two sign changes the system is unstable")
