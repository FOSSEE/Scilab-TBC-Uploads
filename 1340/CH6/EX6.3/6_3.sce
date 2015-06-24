
clc;
//stability via reversing coefficients
s = poly(0,'s');
tf = syslin('c',10/(s^5+2*s^4+3*s^3+6*s^2+5*s+3));
deno = denom(tf);
coef = coeff(deno);

//reversing coefficients of tf 
tf2 = poly([coef(6) coef(5) coef(4) coef(3) coef(2) coef(1)],"s","coeff");
disp(tf2);
x = routh_t(tf2);//using routh_t function to generate the routh table
disp(x);
c = 0;
for i=1:length(coef)
    if(x(i,1)<0)
      c = c+1;
      end
end
if  (c>=1)
    printf("system is unstable");
    else printf("system is stable")
    
end
//since there is sign change in the first column of the table
// the system is unstable
//note: the first column does not contain any zeroes
