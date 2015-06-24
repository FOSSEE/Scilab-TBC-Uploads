clear;
clc;
Voc=150;Rl=10;Il=2.65;Isc=3;
t=Voc/Isc; //(R^2)+(X^2)=(t^2)
R=(((Voc/Il)^2)-(t^2)-(Rl^2))/(2*Rl);
X=sqrt((t^2)-(R^2));
printf("-The equivalent voltage generator circuit has an emf of %d volts and an internal impedance of (%f + j%f) ohms\n",Voc,fix(R*100)/100,round(X*100)/100);
if X>0 then
    printf("-Since X has a positive value the circuit will be inductive");
else 
    disp("-Since X has a negative value the circuit will be capacitve");
end

