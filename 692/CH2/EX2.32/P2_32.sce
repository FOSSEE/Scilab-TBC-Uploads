//EXAMPLE2.32 Stability for anti-Causal system. 
//h[i]=impulse response of LTI system.
clear;
clc;
n= -5:1/1000:5;
a=5;
for i=1:length(n)
    if (n(i)>-1)
        h(i)=0;
    else
        h(i)=a^n(i);
        S=sum(h);
    end
end

if(S<%inf)
    disp('BIBO stable system');
else
    disp('BIBO unstable system');
    
end
