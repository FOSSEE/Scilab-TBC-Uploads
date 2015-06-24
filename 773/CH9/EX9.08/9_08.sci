//calculates//
s=%s;
printf( "1)zeta & Wn without Kd")
G=60*syslin('c',1/(s*(s+4)));
disp(G,"G(S)=")
CL=G/.H;
disp(CL,"C(s)/R(s)=")
y=denom(CL) //extracting the denominator of CL
z=coeff(y)  //extracting the coefficients of the denominator polynomial
//Wn^2=z(1,1) ,comparing the coefficients
Wn=sqrt(z(1,1))            // Wn=natural frequency
//2*zeta*Wn=z(1,2)
zeta=z(1,2)/(2*Wn)       
sys1=syslin('c',1/(s*(s+4)));
syms Kd;
printf("2)Kd for zeta=0.60 with controller")
sys2=s*Kd;
sys3=sys1/.sys2;
G=sys3*60;
disp(G,"G(s)=")
H=1;
sys=G/.H;
disp(sys,"C(s)/R(s)=")
[num,den]=numden(sys)
cof_a_0 = coeffs(den,'s',0) 
cof_a_1 = coeffs(den,'s',1)
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
Wn=dbl(Wn);
disp(Wn,"natural frequency Wn=")
//cof_a_1=2*zeta*Wn
zeta=0.60
Kd=(2*zeta*Wn)-4
