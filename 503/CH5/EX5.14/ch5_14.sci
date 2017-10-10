//to determine in F2,peak rotor AT, max torque, ele i/p at max torque(motoring mode),open ckt voltage(generating mode)

clc;
disp('motoring mode');
K_w=.976;
N_pole=746;
p=4;
I_f=20;
F2=(4/%pi)*K_w*(N_pole/p)*I_f;
S = 48; 
g = 1.5 *10^-3;
disp(F2,'F2(AT)');
B_r=1.6;
D=.29;
l=.35;
T_max=(p/2)*(%pi*D*l/2)*F2*B_r;
disp(T_max,'T_max');
f=50;
w_m=4*%pi*f/p;
P_in=T_max*w_m;
disp(P_in,'P_in(W)');

disp('generating mode');
m=S/(3*p);
ga=180*p/S;
K_b=sind(30)/(3*sind(15/2));
K_w=K_b;
u_o=4*%pi*10^-7;
phi_r=((2*D*l/p)*(u_o/g))*F2;
N_ph=20*p*4/2;
E_ph=4.44*K_b*f*N_ph*phi_r;
E_l=sqrt(3)*E_ph;
disp(E_l,'E_l(V)');