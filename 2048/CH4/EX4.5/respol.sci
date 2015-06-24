// Computation of residues 
// 4.5
// Numerator and denominator coefficients
// are passed in decreasing powers of z(say)

function [res,pol,q] = respol(num,den)
len = length(num);
if num(len) == 0
    num = num(1:len-1);
end

[resi,q] = pfe(num,den);
res = resi(:,2);
res = int(res) + (clean(res - int(res),1.d-04));
pol = resi(:,1);
pol = int(pol) + (clean(pol - int(pol),1.d-04));
endfunction;

///////////////////////////////////////////////////
// Partial fraction expansion

function [resid1,q] = pfe(num,den)
x = poly(0,'x');
s = %s;

num2 = flip(num);
den2 = flip(den);
num = poly(num2,'s','coeff');
den = poly(den2,'s','coeff');
[fac,g] = factors(den);
polf = polfact(den);
n = 1;  

r = clean(real(roots(den)),1.d-5);
//disp(r);
l = length(r);
r = gsort(r,'g','i');
r = [r; 0];
j = 1;
t1 = 1; q = [];
rr = 0;
rr1 = [0 0];
m = 1;

  for i = j:l
     if abs(r(i)- r(i+1)) < 0.01 then
       r(i);
       r(i+1);
       n = n+1;
       m = n;
       //pause
       t1 = i;
       //disp('Repeated roots')
     else
       m = n;
       //pause
       n = 1;
    end
    i;
    if n == 1 then
      rr1 = [rr1; r(i) m];
      //pause
    end;
       j = t1 + 1;
  end;
rr2 = rr1(2:$,:);
[r1,c1] = size(rr2);
den1 = 1;

for i = 1:r1
  den1 = den1 * ((s-rr2(i,1))^(rr2(i,2)));
end;
[rem,quo] = pdiv(num,den);
q = quo;
if quo ~= 0
  num = rem;
end

tf = num/den1;
res1 = 0;
res3 = [s 0];
res5 = [0 0];
for i = 1:r1
  j = rr2(i,2) + 1;
  tf1 = tf; //strictly proper
  k = rr2(i,2);
  tf2 = ((s-rr2(i,1))^k)*tf1;
  rr2(i,1);
  res1 = horner(tf2,rr2(i,1));
  res2 = [(s - rr2(i,1))^(rr2(i,2)) res1];
  res4 = [rr2(i,1) res1];
  res3 = [res3; res2];
  res5 = [res5; res4];
  res = res1;
    for m = 2:j-1
    k;
    rr2(i,1);
      tf1 = derivat(tf2)/factorial(m-1); //ith derivative
      res = horner(tf1,rr2(i,1));
      res2 = [(s - rr2(i,1))^(j-m) res];
      res4 = [rr2(i,1) res];
      res5 = [res5; res4];
      res3 = [res3; res2];
      tf2 = tf1;
    end;
end;      
resid = res3(2:$,:); //with s terms
resid1 = res5(2:$,:); //only poles(in decreasing no. of repetitions)
endfunction;
////////////////////////////////////////////////////////////
