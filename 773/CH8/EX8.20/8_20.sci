//coefficient//
ieee(2);
syms k T;
num=k;
den=s*(1+s*T);
G=num/den;
disp(G,"G(s)=")
H=1;
CL=G/.H;
CL=simple(CL);
disp(CL,"C(s)/R(s)=")  //Calculates closed-loop transfer function
// compare CL with Wn^2/(s^2+2*zeta*Wn+Wn^2)
[num,den]=numden(CL) //extracts num & den of symbolic function (CL)
den=den/T;
cof_a_0 = coeffs(den,'s',0) // coeff of den of symbolic function (CL)
cof_a_1 = coeffs(den,'s',1)
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
disp(Wn,"natural frequency Wn")           // Wn=natural frequency
//cof_a_1=2*zeta*Wn
zeta=cof_a_1/(2*Wn)


