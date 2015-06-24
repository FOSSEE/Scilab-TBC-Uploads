clc
clear
//Initialization of variables
d1=6 //ft
d2=3 //in
pa=2 //ft
d=13.6 
sg=0.75
h1=5 //sec
h2=3 //sec
g=32.2 //ft/s^2
//calculations
pag=pa/12 *d/sg
function time = func(h)
    time= -d1^2 /(d2/12)^2 /(sqrt(2*g)) *(pag+h)^(-0.5)
endfunction
ti=intg(h1,h2,func)
//results
printf("Time required = %.1f sec",ti)
