// Example 6.11 : Avo Rin Rout Gi Gis Gv fH
// Consider the common gate amplifier
g_m=1.25*10^-3; // (A/V)
r_o=18000; // (ohm)
I_D=100*10^-6; // (A)
X=0.2;
R_S=10*10^3; // (ohm)
R_L=100*10^3; // (ohm)
C_gs=20*10^-15;// (F)
C_gd=5*10^-15;// (F)
C_L=0; // (F)
gmplusgmb=g_m+0.2*g_m; // gmplusgmb=g_m+g_mb
A_vo=1+(gmplusgmb)*r_o;
disp(A_vo,"A_vo (V/V)")
R_in=(r_o+R_L)/A_vo;
disp(R_in,"R_in (ohm)")
R_out=r_o+A_vo*R_S;
disp(R_out,"ohm")
G_v=A_vo*R_L/(R_L+R_out);
disp(G_v,"G_v (V/V)")
G_is=A_vo*R_S/R_out;
disp(G_is,"G_is (A/A)")
G_i=G_is*R_out/(R_out+R_L)
disp(G_i,"G_i (A/A)")
R_gs=R_S*R_in/(R_S+R_in);
R_gd=R_L*R_out/(R_L+R_out);
T_H=C_gs*R_gs+C_gd*R_gd;
f_H=1/(2*%pi*T_H);
disp(f_H,"f_H (Hz)")