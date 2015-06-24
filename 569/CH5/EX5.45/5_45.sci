//calculate sensitivity of the transducer, high frequency sensitivity, Lowest frequency
// Calculate external shunt capacitance and high frequency sensitivity after connecting the external shunt capacitance
clc;
Kq=40*10^-3;
Cp=1000*10^-12;
K=Kq/Cp;
disp(K,'sensitivity of the transducer(V/m)')
Cc=300*10^-12;
Ca=50*10^-12;
C=Cp+Cc+Ca;
Hf=Kq/C;
disp(Hf,'high frequency sensitivity (V/m)')
R=1*10^6;
tc=R*C;
M=0.95;
w=(1/tc)*[(M^2)/(1-M^2)]^0.5;
f=w/(2*%pi);
disp(w,'minimum frequency (s)')
disp('now f=10Hz')
f=10;
w=2*%pi*f;
tc=(1/w)*[(M^2)/(1-M^2)]^0.5;
C_new=tc/R;
Ce=C_new-C;
disp(Ce,'external shunt capacitance(F)')
Hf_new=Kq/C_new;
disp(Hf_new,'new value of high frequency sensitivity (V/m)')
