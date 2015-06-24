clc;// in-built fuction routh_t can be used to generate the routh table
s = poly(0,'s');
tf = syslin('c',10/(s^5+7*s^4+6*s^3+42*s^2+8*s+56));
deno = denom(tf);
coef = coeff(deno);
routh = [coef([6,4,2]);coef([5,3,1])];
// we will get a row of all zeroes
T = routh(2,:)/7;
coef1 = coeff(T);
// auxillary polynomial s^2+6*s+8 generation
second = poly([coef1(3) 0 coef1(2) 0 coeff(1)],"s","coeff");disp(second);

aux = derivat(second);//auxillary polynomial
len = coeff(aux);
routh = [routh;len(4) len(2) 0];
disp(routh);
t = routh(2:3,1:3);
det1 = det(t(1:2,1:2))/t(2,1);
det2 = -(t(1,1)*t(2,3)-t(2,1)*t(1,3))/t(2,1);
routh = [routh;-det1 det2 0];
t1 = routh(3:4,1:2);
det3 = det(t1(1:2,1:2))/t1(2,1);
routh = [routh;-det3 0 0];
t2 = routh(4:5,1:2);
det4 = det(t2(1:2,1:2))/t2(2,1);
routh = [routh;-det4 0 0];
disp(routh)
c = 0;
for k = 1:length(coef)
    if(routh(k,1)<0)
        c =c +1;
        end
end

if(c>=1)
    printf("system is unstable")
else printf("system is stable,hence no poles in RHP")
    end


