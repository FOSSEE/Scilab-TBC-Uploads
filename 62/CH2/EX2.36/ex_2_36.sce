clear;
clc;
n=-5:5;
for i=1:length(n)
    if(n(i)>=-1)
        h(i)=2^-(n(i)+1);
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