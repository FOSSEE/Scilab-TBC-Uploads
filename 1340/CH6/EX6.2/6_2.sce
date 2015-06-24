clc;

s = poly(0,'s');//defines a polynomial
po = syslin('c',10/(s^5+2*s^4+3*s^3+6*s^2+5*s+3));//defines a transfer function
m = denom(po);//extraction of the denominator polynomial of the transfer function
co = coeff(m);//extraction of the coefficients of the denominator polynomial
n = length(co);
syms eps ;
flag = 0;

routh = [co([6,4,2]);co([5,3,1])];//generates the first two rows of the routh table

for j=1:n-2
    t = routh(j:j+1,1:3); 
    t1 = t(1:2,1:2); 
    Dt1 = det(t1)/t(2,1);
    Dt2 = (t(2,1)*t(1,3)-t(1,1)*t(2,3))/t(2,1);
    
    if(flag == 0) then
        if(Dt1==0) then 
            Dt1= -eps;
            flag = 1;
        end
    end
        temp = [-Dt1 Dt2 0];
        routh = [routh;temp]; 
end
disp(routh);
routh(3,1)= limit(routh(3,1),eps,0);
routh(4,1) = -limit(routh(4,1),eps,0);//problem getting -infinity
routh(5,1) = limit(routh(4,1),eps,0);
disp(routh);
printf("routh table has one negative sign in the s^2 row");
printf("\nhence 2 poles in RHP");

//does not recognize infinity