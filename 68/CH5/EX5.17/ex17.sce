// Example 5.17 : Amplifier parameters
// Transistor amplifier is having a open circuit voltage of v_sig of 10mV
v_sig=10*10^-3; // (V)
R_L=10*10^3; // (ohm)
R_sig=100*10^3; // (ohm)
disp("Calculation with R_L infinite")
v_i=9; // (V)
v_o=90; // (V)
A_vo=v_o/v_i;
disp(A_vo,"A_vo (V/V)")
G_vo=v_o/A_vo;
disp(G_vo,"G_vo (V/V)")
R_i=G_vo*R_sig/(A_vo-G_vo)
disp(R_i,"R_i (ohm)")
disp("Calculations with R_L = 10k ohm")
v_o=70*10^-3; // (V)
v_i=8*10^-3; // (V)
A_v=v_o/v_i;
disp(A_v,"Voltage gain A_v (V/V)")
G_v=v_o*10^3/10;
disp(G_v,"G_v (V/V)")
R_o=(A_vo-A_v)*R_L/A_v;
disp(R_o,"R_o (ohm)")
R_out=(G_vo-G_v)*R_L/G_v;
disp(R_out,"R_out (ohm)")
R_in=v_i*R_sig/(v_sig-v_i);
disp(R_in,"R_in (ohm)")
G_m=A_vo/R_o;
disp(G_m,"G_m (A/V)")
A_i=A_v*R_in/R_L;
disp(A_i,"A_i (A/A)")
R_ino=R_sig/((1+R_sig/R_i)*(R_out/R_o)-1); // R_ino is R_in at R_L=0
disp(R_ino,"R_in at R_L =0")
A_is=A_vo*R_ino/R_o;
disp(A_is,"A_is (A/A)")