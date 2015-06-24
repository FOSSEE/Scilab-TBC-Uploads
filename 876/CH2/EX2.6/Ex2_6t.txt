//caption:Find error in computed value of power dissipation
//Ex2.6
clc
clear
close
R=100//resistor(in ohm)
Rer=0.2//error in current measurment(in ohm)
I=2//current(in A)
Ier=0.01//error in current measurment(in ohm)
dR=(Rer/R)*100
dI=(Ier/I)*100
P=(I^2)*R
dPo=2*dI+dR
dP=(P*dPo)/100
disp(dP,'error in computed value of power dissipation(in W)=')