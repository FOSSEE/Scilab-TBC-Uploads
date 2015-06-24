//chapter 2
//example 2.5 page 83
T=55-25;//chnage in temperature
A=150;//gain
Vios=.15*10^-3;//input offset voltage shift=chnage in output voltage/change in temp
Voos=Vios*T;//Vios=Voos/T
disp(Voos)
Vout=A*Voos;
disp(Vout)

