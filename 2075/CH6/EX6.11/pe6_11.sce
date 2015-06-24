//example 6.11
clc; funcprot(0);
// Initialization of Variable
Rl=15;//load resistance
D=.85;//duty cycle
Ts=60;//degreeC
Vd=28;//voltage
R1=.375;
R2=.2;
//calculation
I=Vd/(R1+R2+Rl);
disp(I,"current in A:")
Vl=I*Rl;
disp(Vl,"load voltage in V:")
P=D*Vl*I;
disp(P,"power in W:")
Vh=I*R1;
disp(Vh,"high side voltage in V:")
Ph=D*Vh*I;
disp(Ph,"high side power in W:")
Vl=I*R2;
disp(Vl,"low side voltage in V:")
Pl=D*Vl*I;
disp(Pl,"low side power in W:")
Pic=Ph+Pl;
disp(Pic,"IC power in W:")
Pic=1.56;
Tj=150;
Ta=60;
Q=(Tj-Ta)/Pic-2.2;
disp(Q,"thermal resistance in degreeC/W:")
clear()
