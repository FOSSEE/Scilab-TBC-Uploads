//Caption:Determine the (a)Equivalent resistance,leakage reactances and impedance reffered to high voltage side (b)Equivalent resistance,leakage reactances and impedance reffered to high voltage side (c)Total copper loss of transformer
//Exa:3.7
clc;
clear;
close;
f=50;//in Hz
P=30*1000;//in watts
E_1=3000;//in volts
E_2=300;//in volts
R_1=2.5;//in ohms
R_2=0.018;//in ohms
X_1=3.8;//in ohms
X_2=0.052;//in ohms
a=E_1/E_2;
R1=R_1+a^2*R_2;
X1=X_1+a^2*X_2;
Z1=sqrt(R1^2+X1^2);
disp(R1,'(a)Equivalent resistance reffered to high voltage side (in ohms)=');
disp(X1,'   Equivalent reactance reffered to high voltage side (in ohms)=');
disp(Z1,'   Equivalent impedance reffered to high voltage side (in ohms)=');
R2=R_1/a^2+R_2;
X2=X_1/a^2+X_2;
Z2=sqrt(R2^2+X2^2);
disp(R2,'(b)Equivalent resistance reffered to low voltage side (in ohms)=');
disp(X2,'   Equivalent reactance reffered to low voltage side (in ohms)=');
disp(Z2,'   Equivalent impedance reffered to low voltage side (in ohms)=');
I_1=P/E_1;
I_2=P/E_2;
P_cu=I_1^2*R1;
disp(P_cu,'(c)Total copper loss of transformer (in watts)=')