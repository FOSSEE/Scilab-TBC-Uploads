//laplace//
printf("Given: Poles are s=-3, Zeros are s=-2, Gain Factor(k)=5 \n ")
num=poly([-2],'s','roots');
den=poly([-3],'s','roots');
G=5*num/den;
disp(G,"G(s)=")
disp("Input is Step Function ")
syms t s;
R=laplace(1,t,s);
disp(R,"R(s)=")
printf("C(s)=R(s)G(s) \n")
C=R*G;
disp(C,"C(s)=")
c=ilaplace(C,s,t);
disp(c,"c(t)=")

