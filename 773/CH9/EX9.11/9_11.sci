//calculates//
printf("2) with controller')
syms K;
sys1=syslin('c',1/(s*(s+1.2)));
sys2=sys1/.(s*K);
G=16*sys2;
G=simple(G)
disp(G,"G(s)=")
sys=G/.H;
sys=simple(sys);
disp(sys,"C(s)/R(s)=")
[num,den]=numden(sys)
den=den/5; //so that coeff of s^2=1
cof_a_0 = coeffs(den,'s',0) // coeff of den of symbolic function CL
cof_a_1 = coeffs(den,'s',1)
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
Wn=dbl(Wn);
disp(Wn,"natural frequency Wn=")           // Wn=natural frequency
//cof_a_1=2*zeta*Wn
//zeta=cof_a_1/(2*Wn)
zeta=0.56;
k=(8*zeta)-1.2
disp(k,"K=")
Wd=Wn*sqrt(1-zeta^2);
disp(Wd,"Wd=")
Tp=%pi/Wd;
disp(Tp,"Tp=")
Mp=100*exp((-%pi*zeta)/sqrt(1-zeta^2));
disp(Mp,"Mp=")
Ts=4/(zeta*Wn);
disp(Ts,"Ts=")
