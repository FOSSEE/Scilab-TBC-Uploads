// Example 15.8
// Calculating the Complete Response
// Considering the circuit of example 15.7
k=2;
t=0:0.001:5;
s=%s;
B=[-8,0;3,1];
D=[0,0;2,0];
E=[0];
W_adj=[s,-5;3,s+8]; // adj[s*I-A]
P_s=(s+3)*(s+5); // characteristic polynomials
q_1_bef=2;//q_1(0^-)
q_2_bef=-4;//q_2(0^-)
x_2=0;
// x_1=10*t;
q_bef=[2;-4];
X_s=[10/s^2;0];
//The Transformed state vector is
Q_s=(1/P_s)*(W_adj)*{q_bef+B*X_s};
// Writing down two elements of Q_s
Q_s1=(2*s^3+20*s^2-80*s-150)/((s^2)*(s+3)*(s+5));
//inverse laplace transform of Q_s1
q_1=-10*t+12*exp(-3*t)-10*exp(-5*t);
Q_s2=(-4*s^2-26*s+30)/(s*(s+3)*(s+5));
// inverse laplace transform of Q_s2
q_2= 2-12*exp(-3*t)+6*exp(-5*t);

// Since E=0, the resulting output are given by
// y=C*q+D*x , from which 
y_1=6*q_1+10*q_2;
y_2=-2*q_2+20*t;
plot(t,y_1'-r',t,y_2,'-g')
xlabel('t')
ylabel('y(t)')
title("Siganl Waveform")
h1=legend(['y_1';'y_2'])
