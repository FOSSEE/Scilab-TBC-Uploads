clc
//initialisation of variables
W= -10 //KN/m
r= 5 //m
//CALCULATIONS
Rav= -W*2*r/2
Rbv= Rav
function[y]=conv(x)
    y=125*(sin(x))^2*5*(sin(x))*5
endfunction
v=intg(0,%pi,conv)
function[y]=conk(x)
    y=25*(sin(x))^2*5
endfunction
k=intg(0,%pi,conk)
Rbh= v/k
Rah= Rbh
//RESULTS
printf ('Rav= %.2f KN',Rav)
printf (' \n Rbv=%.2f KN',Rbv)
printf (' \n Rah=%.2f KN',Rah)
printf (' \n Rbh=%.2f KN',Rbh) 

