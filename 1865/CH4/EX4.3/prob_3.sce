
//Problem 3
//Calculate the number of oscillations corresponding to the coherence length and the coherence time
clear
clc
L=2.945*(10)^(-2)//length for NA light (in m)
w=5890//wavelength of NA light (in A)
c=3*(10)^8//speed of light
n=L/(w*(10)^(-10))//number of oscillations in length L
t=L/c//coherence time
printf('number of oscillations in length L = %.4f\n',n)
printf('coherence time = %.13f sec',t)