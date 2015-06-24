//inverse laplace
syms s 
F=1/(s^2+1)        //w=1
disp(F,"F(s)=")
f=ilaplace(F)
disp(f,"f(t)=")
printf("since s*F(s) has two poles on imaginary axis of s plane,final value thereom cannot be applied in this case")