//EXAMPLE 2.31, Stability for causal system.
//h[i]=impulse response of LTI system.
clear;
clc;
n= -5:0.001:5;
a=0.6;

for i=1:length(n)
    if (n(i)<0)
        h(i)=0;
    else
        h(i)=abs(a^n(i));
        
    end
end
S=sum(h);
if(S<%inf)
    disp('BIBO stable system');
else
    disp('BIBO unstable system');
    
end
