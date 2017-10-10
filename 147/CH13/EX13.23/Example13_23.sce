close();
clear;
clc;
//high voltage winding ratio 'R1', leakage reactance 'X1', low voltage winding resistance 'R2', low voltage leakage resistance 'X2'
X2 = 0.042; //ohm
V1 = 2400; //V
V2 = 120; //V
X1 = 0.22; //ohm
R1 = 0.1; //ohm
R2 = 0.035; //ohm
a = V1/V2; 
P = 30*10^3; //VA
//resistance referred to HV winding 'R1_'
R1_ = R1 + (a^2)*R2; //ohm
//leakage reactance referred to HV side 'X1_'
X1_ = X1 + (a^2)*X2; //ohm
//impedance referred to HV side 'Z_'
Z_ = sqrt(R1_^2 + X1_^2); //ohm
//primary full load current 'I1'
I1 = P/V1; //A
//total copper loss 'Pc'
Pc = (I1^2)*Z_;
mprintf("Equivalent winding resistance = %0.1f ohm\n\n",R1_);
mprintf("Impedance referred to high voltage side = %0.3f ohm\n\n",Z_);
mprintf("Total copper loss of transformer = %0.4f kW",Pc/1000);