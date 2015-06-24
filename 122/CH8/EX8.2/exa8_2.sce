// Example 8-2
// Computation of Optimal solution 1

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "";
// exec("plotresp.sci");

s = %s;
G = 1.2 / ( 0.36*s^3+ 1.86*s^2 + 2.5*s + 1);

K = 2.0 : 0.2 : 3.0;
a = 0.5 : 0.2 : 1.5;

t = 0:0.1:5; u = ones(1,length(t));
// lesser points for a rough check
t1 = 0:0.01:5; u1 = ones(1,length(t1));
// more points for a rigorous check

k = 0;
for i = 1:6
  for j = 1:6
    Gc = K(i) * (s + a(j))^2 / s;
    H = G * Gc;
    H = syslin('c', H /. 1);
    y = csim(u,t,H); 
    m = max(y);
    if m < 1.1 then 
      y = csim(u1,t1,H);
      m = max(y);
      if m  < 1.1 then
        k = k + 1; 
        solution(k,:) = [K(i) a(j) m];
      end
    end
  end
end
disp(solution,'solution [K a m] = ');
// to sort the matrix
[x O] = gsort(solution(:,3),'r','i');
// re order the matrix
for i = 1:k
  sortsolution(i,:) = solution( O(i) , :);
end
disp(sortsolution,'sortsolution [K a m] = '); 

// Response with largest overshoot above 10%
x = sortsolution(k,:);
K = x(1); a = x(2); 
Gc = K * (s + a)^2 / s;
H = G * Gc;
H = syslin('c', H /. 1);
plotresp(u1,t1,H,'Step Response with 10% overshoot');
disp(Gc,'Gc = ');
disp(H,'H = ');
  