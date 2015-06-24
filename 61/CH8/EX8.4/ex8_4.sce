//ex8.4
V_DD=12;
V_in=100*10^-3;
R_D=3.3*10^3;
I_DSS=12*10^-3;
V_GS_off=-3;
R_S=910;
a=(R_S^2)/(V_GS_off^2);    //we take V_GS_off positive so that we take current negative
b=(-1)*(((2*R_S)/(V_GS_off))-(1/I_DSS));
c=1;
p1=poly([c b a],'x','c')
A=roots(p1)
I_D=(-1)*A(1);    //make the value of current positive
V_D=V_DD-I_D*R_D;
V_GS=-I_D*R_S;
g_m0=(2*I_DSS)/(abs(V_GS_off));
g_m=g_m0*(1-(V_GS/V_GS_off));
V_out=g_m*R_D*V_in;    //rms value
v_out=V_out*1.414*2;    //peak to peak dc value
disp(v_out,'output dc voltage (peak to peak) in volts')