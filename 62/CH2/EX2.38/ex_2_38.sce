clear;
clc;
n=-5:5;
alpha=.6;
for i=1:length(n)
    if(n(i)>=0)
        h(i)=alpha^n(i);
     else
         h(i)=0;
     end 
 end
causal=%t;
for i=1:length(n)
    if n(i)<0 & h(i)~=0 then
    causal=%f;
    end
end
disp(causal,"the statement that the system is causal is");
n=0:100000;
for i=1:length(n)
    if(n(i)>=0)
        h(i)=alpha^n(i);
     else
         h(i)=0;
     end 
 end
 bibo=sum(h);
 if (bibo<%inf) then
     disp("system is bibo stable");
 else
    disp("system is not stable"); 
 end