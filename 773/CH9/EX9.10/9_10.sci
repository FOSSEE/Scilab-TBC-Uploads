//calculates//
s=%s;
printf("1)without controller")
G=64*syslin('c',1/(s*(s+4)));
disp(G,"G(s)=")
H=1;
CL=G/.H;
disp(CL,"C(s)/R(s)=")
//Extracting the denominator of CL
y=denom(CL)
//Extracting the coefficients of the denominator polynomial
z=coeff(y) 
//Wn^2=z(1,1) ,comparing the coefficients
Wn=sqrt(z(1,1)); 
//Wn=natural frequency
disp(Wn,"Wn=") 
printf("2) with controller')
syms K;
sys1=syslin('c',1/(s*(s+4)));
sys2=sys1 /.(s*K);
G=64*sys2
disp(G,"G(s)=")

sys=G/.H;
sys=simple(sys);
disp(sys,"C(s)/R(s)=")
[num,den]=numden(sys)
//Coeff of den of symbolic function CL
cof_a_0 = coeffs(den,'s',0) 
cof_a_1 = coeffs(den,'s',1)
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
Wn=dbl(Wn);
//Wn=natural frequency
disp(Wn,"natural frequency Wn=") 
//cof_a_1=2*zeta*Wn
zeta=cof_a_1/(2*Wn)
zeta=0.6;
k=(16*zeta)-4
disp(k,"K=")
