//EXAMPLE 2.33 ,stability of finite impulse response.
//h[i]=impulse response of LTI system.
clear;
clc;
n= -5:1/100:5;
a= input('value of a');
N1=input('lower limit');
N2=input('upper limit');
for i=1:length(a)
    if (n(i)<N1 & n(i)>N2)
        h(i)=0;
    else
        h(i)=a^n(i);
        S=sum(h);
    end
end

if(S<%inf)
    disp('BIBO stable system');       //as long as N1,N2!=%inf 
else
    disp('BIBO unstable system');
    
end
