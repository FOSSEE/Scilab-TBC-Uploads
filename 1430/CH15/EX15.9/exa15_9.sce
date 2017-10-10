// Example 15.9
// Calculating the Zero-State Response
s=%s;
t=0:0.001:5;
// From Transfer function Matrix equation i.e.
//P(s)*H(s)=C*adj[s*I-A]*B+P(s)*[D+s*E]
// Substituting various Matrices into the above equations we get
P_s= (s+3)*(s+5)
W=[6,10;0,-2]*[s,-5;3,s+8]*[-8,0;3,1]+(P_s)*[0,0;2,0];
H_s=W/P_s;

//To obtain the Zero-state outputs produced by x1(t)=u(t) and x2(t)=0
X_s=[1/s;0]; // Laplace transform of input matrix
Y_s=H_s*X_s;
// Writing down two elements of Y_s
Y_1=-18/(s*(s+3));
// taking inverse laplace of Y_1
y1= -6+6*exp(-3*t);
Y_2=(2*s^2+10*s+30)/(s*(s+3)*(s+5));
// taking inverse laplace of Y_2
y2=2-3*exp(-3*t)+exp(-5*t);
plot(t,y1,'-r',t,y2,'-g')
xlabel('t')
ylabel('y(t)')
title('Signal Waveform')
h1=legend(['y1';'y2']);
