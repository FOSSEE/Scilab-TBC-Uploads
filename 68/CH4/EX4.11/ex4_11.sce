// Example 4.11: To determine all parameters of transistor amplifier
v_o=90; // (V)
v_i=9; // (V)
R_sig=100*10^3; // (ohm)
R_L=10*10^3; // (ohm)
v_sig=10; // (V)
A_vo=v_o/v_i;
disp(A_vo,"A_vo (V/V)")
G_vo=v_o/A_vo;
disp(G_vo,"G_vo (V/V)")
R_i=G_vo*R_sig/(A_vo-G_vo)
disp(R_i,"R_i")
disp("assume R_L = 10 kilo ohm is connected")
v_o=70; // (V)
v_i=8; // (V)
A_v=v_o/v_i;
disp(A_v,"A_v (V/V)")
G_v=v_o/A_vo;
disp(G_v,"G_v (V/V)")
R_o=R_L*(A_vo-A_v)/A_v;
disp(R_o,"R_o (ohm)")
R_out=R_L*(G_vo-G_v)/G_v;
disp(R_out,"R_out (ohm)")
R_in=(v_i*100)/(v_sig-v_i);
disp(R_in,"R_in (ohm)")
G_m=A_vo/R_o;
disp(G_m,"G_m (mho)")
A_i=A_v*R_in/R_L;
disp(A_i,"A_i (V/V)")
R_inL0=R_sig/((1+R_sig/R_i)*(R_out/R_o)-1); // R_in|R_L=0 (ohm)
disp(R_inL0,"R_in at R_L=0")
A_is=A_vo*R_inL0/R_o;
disp(A_is,"A_is (A/A)")