//Finding of (Vm/Vp) and (Np/Nm)
//Given
L1=1/5000;
L2=1/256;
Qr=1/(2*10^7);
//To Find
Vr=(1/L1)*(1/L2)*Qr;
Nr=Vr*((L2)^-(2/3)*(L2)^-(1/2)*(1/L1)^-(1/2));
disp("Vm/Vp ="+string(Vr)+" m/sec");
disp("Np/Nm ="+string(Nr)+" No units");
