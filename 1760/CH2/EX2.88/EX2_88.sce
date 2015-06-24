     //EXAMPLE 2-88  PG NO-130
L=10^-3;           //INDUCTANCE
C=20*10^-6;      //CAPACITOR
Rc=4;            //CAPACITOR  RESISTANCE 
RL=6;           //LOAD RESISTANCE
Wo=(1/(L*C)^0.5)*(((RL*RL)-(L/C))/((Rc*Rc)-(L/C)))^0.5;
disp(' Wo is = '+string(Wo)+' rad/sec');
