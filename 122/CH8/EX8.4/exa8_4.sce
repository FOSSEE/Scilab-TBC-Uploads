// Example 8-4
// Design of system with two degrees of freedom

clear; clc;
xdel(winsid());  //close all windows
mode(0);
// please edit the path
// cd "";
// exec("plotresp.sci");

s = %s;
// Design Step 1: choosing a, b and c.

t = 0:0.1:4;
u = ones(1,length(t));

t1 = 0:0.01:4;
N = length(t1);
u1 = ones(1,N);
// N = N - 3

k = 0;
mprintf('Processing...\n');

for i = 1:21
  a = 6.2 - 0.2*i;
  for j = 1:21
    b = 6.2 - 0.2*j;
    for h = 1:21
      c = 12.2 - 0.2*h; 
      num = (2*a + c)*s^2 + (a*a + b*b + 2*a*c)*s + (a*a + b*b)*c;
      den = s^3 + num;
      G = syslin('c',num,den);      
      y = csim(u,t,G);
      m = max(y);
      if m < 1.19 & m > 1.00 then
        y = csim(u1,t1,G);
        m = max(y);
        if m < 1.19 & m > 1.02 then
          l = N;
          while y(l) > 0.98 & y(l) < 1.02 ; l = l-1; end
            ts = (l-1) * 0.01; 
          if ts < 1.0 then
             k = k + 1;
             solution(k,:) = [a b c m ts];
           end
         end
       end
             
     end
  end
 mprintf(' completed %d%%\n', (6 - a)/4*100);
end
  
disp(solution,'solution = ');

K = solution(1,:);
a = K(1); b = K(2); c = K(3);
num = (2*a + c)*s^2 + (a*a + b*b + 2*a*c)*s + (a*a + b*b)*c;
den = s^3 + num;
YbyR = syslin('c',num,den);disp(YbyR,'Y(s)/R(s) =');
subplot(2,1,1);
plotresp(u1,t1,YbyR,'Step response for a = 4.2 ,b = 2 ,c =12');

cf  = coeff(den);
K = (cf(3) - 1) / 10 
alpha_plus_beta = cf(2) / K /10
alphabeta = cf(1) / K / 10
Gc = K * (s^2 + alpha_plus_beta*s + alphabeta) / s
YbyD = syslin('c',10*s,den);
disp(YbyD,'Y(s)/D(s) = ');
subplot(2,1,2);
plotresp(u1,t1,YbyD,'Response to step disturbance input for a = 4.2 ,b = 2 ,c =12');
a = gca(); a.data_bounds = [0 -0.01; 4 0.07];

// Design Step 2
scf();
Gc1 = (YbyR.num / 10) / s
Gc2 = Gc - Gc1

// response to reference inputs
y1 = csim(t,t,YbyR); u = 1/2 * t.^2;
y2 = csim(u,t,YbyR);

subplot(2,1,1);
plotresp(t,t,YbyR,'Response to unit ramp input');
subplot(2,1,2);
plotresp(u,t,YbyR,'Response to unit acceleration input');
