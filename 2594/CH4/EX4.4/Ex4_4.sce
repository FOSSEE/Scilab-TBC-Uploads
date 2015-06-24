clc
Nd=10^15
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor concentration..
tn=10*10^-6
disp("minority carrier lifetime = "+string(tn)+"s") //initializing value of minority carrier lifetime.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of electron and hole concentration per cm^3.
p=(no^2/Nd)
disp("excess carrier concentration,p=(no^2/Nd))="+string(p)+"/cm^3")//calculation
R=(p/tn)
disp("electron hole generation and recombination rate,R=(p/t))="+string(R)+"/cm^3s")//calculation
t=Nd/R
disp("majority carrier concentration,t=Nd/R)="+string(t)+"s")//calculation.


//the value of majority carrier concentration,t=Nd/R (after calculation),is provided wrong in the solution.
