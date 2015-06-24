Rc=10*10^6//code rate 
Bc=Rc//RF bandwidth=code rate
Rb=4.8*10^3//info. data rate
Gp=Bc/Rb//processing gain
GpdB=10*log10(Gp)//processing gain in dB 

Rc1=50*10^6
Bc1=Rc1
Gp1=Bc1/Rb
Gp1dB=10*log10(Gp1);
Inc=Gp1dB-GpdB
printf('increase in processing gain= %.1f dB',Inc+0.1);
