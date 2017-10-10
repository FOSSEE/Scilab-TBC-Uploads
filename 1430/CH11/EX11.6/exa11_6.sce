// Example 11.6
// Design of a Bandpass filter
L=1*10^-3;
R_w=1.2;
B=2*%pi*2*250; // Bandwidth
omega_0=2*%pi*20*10^3;
Q=omega_0/B; // quality factor
f_l=20000-250;
f_u=20000+250;
f_0=sqrt(f_l*f_u);
Q_par=Q;
C=1/(omega_0^2*L); // Required value of Capacitor
R_par=L/(C*R_w); // Parallel equivalent of winding resistance
R_eq=Q*omega_0*L;
R=(R_eq*R_par)/(R_par-R_eq);
disp(C,"Required value of C (Farad)=")
disp(R,"Required value of R(Ohms)=")
