//example 6.7
clc; funcprot(0);
// Initialization of Variable
R1=.11;//resistance
Vd=28;//voltage
R2=6;//ohm
D=.4;//duty cycle
Q=62;
Ro=2.6*R1;
disp(Ro,"worstcase resistance in ohm:")
Ip=Vd/(R2+Ro);
disp(Ip,"load current in A:")
Vl=Ip*R2;
disp(Vl,"load voltage in V:")
Pl=D*Vl*Ip;
disp(Pl,"load power in W:")
Vq=Ip*Ro;
disp(Vq,"drop voltage in V:")
Pq=D*Vq*Ip;
disp(round(Pq*10)/10,"power in W:")
T=40+round(Pq*10)/10*Q;
disp(T,"temperature in deg.C")
clear()
