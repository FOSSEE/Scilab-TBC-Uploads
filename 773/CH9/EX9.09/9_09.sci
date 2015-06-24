//calculates//
s=%s;
printf("1)without controller")
G=syslin('c',120/(s*(s+12.63)));
disp(G,"G(s)=")
H=1;
CL=G/.H;
disp(CL,"C(s)/R(s)=")
y=denom(CL) //extracting the denominator of CL
z=coeff(y)  //extracting the coefficients of the denominator polynomial
//Wn^2=z(1,1) ,comparing the coefficients
Wn=sqrt(z(1,1)); 
disp(Wn,"Wn=")           // Wn=natural frequency
//2*zeta*Wn=z(1,2)
zeta=z(1,2)/(2*Wn);
disp(zeta,"zeta=")  
printf("2) with controller')
G=syslin('c',(120*(30+s))/(s*(s+12.63)*30));
disp(G,"G(s)=")
CL=G/.H;
disp(CL,"C(s)/R(s)=")
den=denom(CL)
den=den/30 //extracting the denominator of CL
z=coeff(den)  //extracting the coefficients of the denominator polynomial
//Wn^2=z(1,1) ,comparing the coefficients
Wn=sqrt(z(1,1)); 
disp(Wn,"Wn=")           // Wn=natural frequency
//2*zeta*Wn=z(1,2)
zeta=z(1,2)/(2*Wn);
Mp=100*exp((-%pi*zeta)/sqrt(1-zeta^2));
disp(Mp,"Mp=")
Ts=4/(zeta*Wn);
disp(Ts,"Ts=")

