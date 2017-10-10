// Example 15.7
// Calculating the Zero-Input Response
t=0:0.01:10;
s=%s;
n=2;
r=2;
A=[-8,-5;3,0];
C=[6,10;0,-2];
q_1_bef=2; //q_1(0^-)
q_2_bef=-4;//q_2(0^-)
q_bef=[2;-4]; // q(0^-)
I=eye(2,2)
W=s*I-A;
// Taking adjoint of W i.e. adj[s*I-A]
W_adj=[s,-5;3 ,s+8]
P_s=det(W);
phi_s=W_adj/P_s // Resolvent matrix
// Transform of the state vector
Q_s=phi_s*q_bef;
// Writing down two elements of Q_s
Q_s1=(2*s+20)/P_s;
q_1=7*exp(-3*t)-5*exp(-5*t);// inverse laplace transform of Q_s1
Q_s2=(-4*s-26)/P_s;
q_2=-7*exp(-3*t)+3*exp(-5*t); // inverse laplace transform of Q_s2
// y=C*q=[6,10;0,-2]*[q_1;q_2]=[6*q1+10*q2;-2*q2]
y_1=6*q_1+10*q_2; 
y_2=-2*q_2;
plot(t,y_1,'-g',t,y_2,'-r')
xlabel('t');
ylabel('y');
title('Signal Waveform')
h1=legend(['y_1';'y_2']);

