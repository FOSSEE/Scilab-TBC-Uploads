Vl=400
Zload=60+%i*15

Vs=Vl/sqrt(3)
Z=0.3+%i*1+Zload

Il=Vs/Z
Vload=Il*Zload*sqrt(3)
Pload=3*Il*Il*real(Zload)
Qload=3*Il*Il*imag(Zload)
Sload=Pload+%i*Qload

////////////ll=lineloss
Pll=3*Il*Il*real(Z-Zload)
Qll=3*Il*Il*imag(Z-Zload)
Sll=Pll+%i*Qll

Ssource=Sload+Sll

disp(Il,Vload,Sload,Sll,Ssource)