// Example A-8-12
// Computing optimal solution

clear; clc;
xdel(winsid());  //close all windows

s = %s;
t = 0:0.1:5; u = ones(1,length(t));
t1 = 0:0.01:5;N =length(t1);  u1 = ones(1,N);

k = 0;
mprintf('Processing ...\n');
for K = 50:-1:2
  for a = 2:-0.05:0.05
    num = K * ((s + a)^2) ;
    den = s * s * (s^2 + 6*s + 5);
    G = syslin('c',num,num + den);
    y = csim(u,t,G);
    m = max(y);
    if m < 1.1 & m > 1.00 then;
      y = csim(u1,t1,G);  
      if m < 1.1 & m > 1.02 then; 
        l = N;
        while y(l) > 0.98 & y(l) < 1.02 ; l = l-1; end 
        ts = (l-1)*0.01;
        if ts < 3.0;
          k= k + 1;
          solution(k,:) = [K a m ts];
        end
      end
    end
    
  end
 mprintf('completed %d%%\n',(50 - K)/48*100);
end      
disp(solution,'solution = ');

// sort the solution set
[x O] = gsort(solution(:,3),'r','i');
for i = 1:k
  sortsolution(i,:) = solution(O(i),:);
end
disp(sortsolution,'sortsolution = ');

x = sortsolution(7,:); K = x(1); a = x(2)
    num = K * ((s + a)^2) ;
    den = s * s * (s^2 + 6*s + 5);
    G = syslin('c',num,num + den);
    y1 = csim('step',t1,G);

x = sortsolution(2,:); K = x(1); a = x(2)
    num = K * ((s + a)^2) ;
    den = s * s * (s^2 + 6*s + 5);
    G = syslin('c',num,num + den);
    y2 = csim('step',t1,G);
plot(t1,y1,t1,y2);
xgrid();
xtitle('Unit Step response curves','t (sec)','output');
legend('K = 29 , a = 0.25', 'K = 27 , a = 0.2');
