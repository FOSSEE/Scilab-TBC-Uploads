// Example  1.69

clc;clear;close;

// Given data
format('v',7);
P=6;//no. of poles
f1=50;//in Hz
f2=1.5;//in Hz
Zo=150;//useful Torque in N-m
FrictionLoss=10;//in N-m
Psc=700;//stator loss in watt

//calculations
Ns=120*f1/P;//in rpm
S=f2/f1;//slip
Nr=(1-S)*Ns;//in rpm
wr=2*%pi*Nr/60;//in rad/sec
Po=Zo*wr;//in watts
Pmd=(Zo+FrictionLoss)*wr;//in watts
//Part (a)
Prc=S/(1-S)*Pmd;//in watts
disp(Prc/1000,"(a) Rotor Copper Loss in KW : ");
//Part (b)
Pi=Pmd+Prc+Psc;//in watts
disp(Pi/1000,"(b) Input to the motor in KW : ");
//Part (c)
Eff=Po/Pi;//Effiiency
disp(Eff*100,"(d) Efficiency in % :  ");
