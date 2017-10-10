// Example 8.2
// Power Transmission with Transformers
// From figure 8.8(a)
P=15000; // Watts  ; Objective of the problem
R_S=2;//source resistance
R_L=3;// Load resistance
I_out_m=sqrt(2*P/3);
V_out_m=R_L*I_out_m;
I_m=I_out_m; // Line current 
V_s_m=(R_L+R_S)*I_m; // Ohm's Law
Eff=R_L/(R_L+R_S);
P_S=0.5*2*I_m^2; // Power waste in transmission line
// Now Form modified circuit 8.8(b)
phase_i_out=0; // in degree
I_out=complex(I_out_m,0);
V_out=complex(V_out_m,0);
// Now we will refer both th source and the load into the middle section with transmission line
R_L_ref=4^2*R_L;// Load resistance referred to the primary
Eff_new=R_L_ref/(R_L_ref+R_S);
N=poly(0,'N')
I_m_new=(V_s_m*N)/(R_L_ref+R_S);
a=I_m_new-I_out_m/4;
N=roots(a);
I_m_new=horner(I_m_new,N)
P_S_new=0.5*2*I_m_new^2;
phase_I_new=phase_i_out;
I_in=complex(I_m_new,0)*N;
disp(Eff,"Power transfer efficiency without transformer(in Watt)=")
disp(Eff_new,"Power transfer efficiency with transformer(in Watt)=")
