//calculates//
s=%s;
sys1=syslin('c',9/(s*(s+1.8)));
syms Td ;
sys2=1+(s*Td);
sys3=sys1*sys2;
H=1;
CL=sys3/.H; //Calculates closed-loop transfer function
disp(CL,"C(s)/R(s)")
// compare CL with Wn^2/(s^2+2*zeta*Wn+Wn^2)
[num,den]=numden(CL) //extracts num & den of symbolic function CL
den=den/5;
cof_a_0 = coeffs(den,'s',0) // coeff of den of symbolic function CL
cof_a_1 = coeffs(den,'s',1)
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
disp(Wn,"natural frequency Wn")           // Wn=natural frequency
//cof_a_1=2*zeta*Wn
zeta=cof_a_1/(2*Wn)
zeta=1;disp(zeta,"for criticaly damped function zeta")  
Td=((2*Wn)-1.8)/9  
Ts=4/(zeta*Wn);
Ts=dbl(Ts);
disp(Ts,"settling time Ts")
