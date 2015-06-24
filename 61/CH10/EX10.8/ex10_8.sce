//ex10.8
V_GS=-12;
I_GSS=100*10^-9;
R_G=10*10^6;
R_D=10*10^3;
C1=0.001*10^-6;
C2=0.001*10^-6;
R_in_gate=abs((V_GS/I_GSS));
R_in=(R_in_gate*R_G)/(R_G+R_in_gate);
R_L=R_in;    //according to question
f_c_input=1/(2*%pi*R_in*C1);
disp(f_c_input,'critical frequency of input RC circuit in hertz')
f_c_output=1/(2*%pi*(R_D+R_L)*C2)
disp(f_c_output,'critical frequency of output RC circuit in hertz')