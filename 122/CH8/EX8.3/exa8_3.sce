// Example 8-3
// Computation of Optimal solution 2

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "";
// exec("plotresp.sci");

s = %s;
G = 4 / ( s^3+ 6*s^2 + 8*s + 4);

t = 0:0.1:8; u = ones(1,length(t));
// lesser points for a rough check
t1 = 0:0.01:8; u1 = ones(1,length(t1));
// more points for a rigorous check

k = 0;
mprintf('Processing...\n');

for K = 3:0.2:6
  for a = 0.1:0.1:3
    Gc = K * (s + a)^2 / s;
    H = G * Gc;
    H = syslin('c', H /. 1);
    y = csim(u,t,H);
    m = max(y);
    if m < 1.15 & m > 1.08 then
       // give  a margin of 0.02 for the rough check - 1.08 
       y = csim(u1,t1,H);
       m = max(y);
       if m < 1.15 & m > 1.10 then
         // check for settling time
         l =length(t1);
         while y(l) > 0.98 & y(l) < 1.02 ; l = l-1; end
            ts = (l-1) * 0.01;
         if ts < 3.00 then   
            k = k + 1;
            solution(k,:) = [K a m ts]; 
          end
        end
      end
      
    end
  if modulo(K*10,2) == 0 then mprintf(' completed %d%%\n', (K - 3)/3*100)
 end
end
  
disp(solution,'solution [K a m ts] = ');

[x O] = gsort(solution(:,3),'r','i');
for i = 1:k
  sortsolution(i,:) = solution( O(i) , :);
end
disp(sortsolution,'sortsolution [K a m ts] = '); 

// Response with smallest overshoot
x = sortsolution(1,:);
K = x(1); a = x(2); 
Gc = K * (s + a)^2 / s;
H = G * Gc;
H = syslin('c', H /. 1);
plotresp(u,t,H,'Step Response with smallest overshoot');
disp(Gc,'Gc = ');
disp(H,'H = '); 
 