//denominator polynomial//
ieee(2);
syms k a;
num=k ;
den=s*(a+s);
G=num/den;
disp(G,"G(s)=")
H=1;
CL=G/.H;
CL=simple(CL);
disp(CL,"C(s)/R(s)=")  //Calculates closed-loop transfer function
// compare CL with Wn^2/(s^2+2*zeta*Wn+Wn^2)
[num,den]=numden(CL); //extracts num & den of symbolic function (CL)
cof_a_0 = coeffs(den,'s',0); // coeff of den of symbolic function (CL)
cof_a_1 = coeffs(den,'s',1);
//Wn^2= cof_a_0,comparing the coefficients
Wn=sqrt(cof_a_0) 
//cof_a_1=2*zeta*Wn
zeta=cof_a_1/(2*Wn)
Mr=1/(2*zeta*sqrt(1-zeta^2)) //----------1)
printf("Given ,Mr=1.25 \n");
//On solving eq (1) we get k=1.25a^2-------2
printf("k=1.25*a^2  \n")
Wr=Wn*sqrt(1-2*zeta^2)   //---------------3)
printf("Given, Wr=12.65  \n") ;
//on soving eq (3),we get 2k-a^2=320-----------4)
printf("2k-a^2=320 \n")
//now eq 2 &4 can be simultaneously soved to take out values of k &a
// Let k=x & a^2=y
A=[1,-1.25;2,-1]; // coefficient matrix
b=[0;320];
m=A\b;
x=m(1,1);
k=x
y=m(2,1);
a=sqrt(y)
Wn=dbl(eval(Wn)); 
disp(Wn,"Wn=")
zeta=dbl(eval(zeta));
disp(zeta,"zeta=')
Ts=4/(zeta*Wn) ;
disp(Ts,"Settling Time (Ts)=")
Wc=Wn((1-(2*zeta^2))+sqrt(4*zeta^4-4*zeta^2+2))
disp(Wc,"BW=")
