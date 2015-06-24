clc
//ex4.1
V_s=10;      //source voltage
R_1=5;
R_2=5;
L=1;
C=1*10^-6;
//for t>>0, we apply steady state conditions i.e., inductor and capacitor are replaced by short and open circuits respectively
R_eq=R_1+R_2;      //R_1 and R_2 in series
i_x=V_s/R_eq;      //ohm's law
V_x=R_2*i_x;      //voltage across R_2
disp(i_x,'current ix in amperes')
disp(V_x,'voltage Vx in volts')
