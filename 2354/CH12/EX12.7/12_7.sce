//example 12.7
clc; funcprot(0);
// Initialization of Variable
Wpdot=10*550;
gamm=62.4;//density
Q=2;//flow rate
hp=Wpdot/gamm/Q;
hl=-30+hp;
disp(hl,"head loss in ft");
Wdot=gamm*Q*hl/550;
disp(Wdot,"power output in hp");
clear()
