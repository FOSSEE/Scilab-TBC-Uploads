//calculates//
s=%s;
sys1=syslin('c',20/(s*(s+2)));
syms Kt;
sys2=Kt*s;
sys3=sys1/.sys2;
p=simple(sys3);
disp(p,"G(s)=")
H=1;
sys=sys3/.H;
sys=simple(sys);
disp(sys,"C(s)/R(s)=")
[num,den]=numden(sys)
cof_a_0 = coeffs(den,'s',0) // coeff of den of symbolic function CL
cof_a_1 = coeffs(den,'s',1)
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
Wn=dbl(Wn);
disp(Wn,"natural frequency Wn=")           // Wn=natural frequency
//cof_a_1=2*zeta*Wn
zeta=cof_a_1/(2*Wn)
zeta=0.6;   
Kt=((2*zeta*Wn)-2)/20;
disp(Kt,"Kt=")
Wd=Wn*sqrt(1-zeta^2);
disp(Wd,"Wd=")
Tp=%pi/Wd;
disp(Tp,"Tp=")
Mp=100*exp((-%pi*zeta)/sqrt(1-zeta^2));
disp(Mp,"Mp=")
Ts=4/(zeta*Wn);
disp(Ts,"Ts=")
