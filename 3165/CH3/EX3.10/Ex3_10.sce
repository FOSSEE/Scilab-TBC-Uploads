//Example 3. 1 0
//Program to de t e rmine f i l t e r c o e f f i c i e n t s o b t a i n e d by s ampl ing :
//N=7 ,w=p i /2
clc ;
N =7;
U =1; // Ze ro Adjus t
for n =0+ U :1:N -1+U
h(n) =(1+2* cos (2* %pi *(n-U -3) /7) )/N
end
disp (h," F i l t e r Co e f f i c i e n t s , h ( n )=")
