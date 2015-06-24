// Example 11.21: (c) AF, T
//                (d) Voltage gain
clc, clear
ICQ1=0.25e-3; // in amperes
ICQ2=1e-3; // in amperes
ICQ3=0.5e-3; // in amperes
RC1=5e3; // in ohms
RC2=7.5e3; // in ohms
RC3=10e3; // in ohms
R1=0.2e3; // in ohms
R2=0.33e3; // in ohms
RS=0.6e3; // in ohms
RF=20e3; // in ohms
btao=200;
VA=125; // in volts
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (c)");
gm1=ICQ1/VT; // in mho
r_pi1=btao/gm1; // in ohms
ro1=VA/ICQ1; // in ohms
gm2=ICQ2/VT; // in mho
r_pi2=btao/gm2; // in ohms
ro2=VA/ICQ2; // in ohms
gm3=ICQ3/VT; // in mho
r_pi3=btao/gm3; // in ohms
ro3=VA/ICQ3; // in ohms
Rin1=r_pi1+(btao+1)*parallel(RF+R2,R1); // in ohms
RL1=parallel(RC1,ro1); // in ohms
RL2=parallel(RC2,ro2); // in ohms
Rin2=r_pi2; // in ohms
Rin3=r_pi3+(btao+1)*parallel(R2,RF+R1); // in ohms
Io_Ib3=btao; // Io/Ib3
Ib3_Ic2=-RL2/(RL2+Rin3); // Ib3/Ic2
Ic2_Ib2=btao; // Ic2/Ib2
Ib2_Ic1=-RL1/(RL1+Rin2); // Ib2/Ic1
Ic1_Ib1=btao; // Ic1/Ib1
Ib1_VS=1/(RS+Rin1); // Ib1/VS in mho
AoL=Io_Ib3*Ib3_Ic2*Ic2_Ib2*Ib2_Ic1*Ic1_Ib1*Ib1_VS; // Open loop
bta=-R1*R2/(R1+R2+RF); // Feedback factor
T=-bta*AoL;
AF=AoL/(1+T);
disp(T,"T =");
disp(AF,"AF =");

disp("Part (d)");
Vo_VS=-AF*parallel(RC3,ro3);
disp(Vo_VS,"Voltage gain =");