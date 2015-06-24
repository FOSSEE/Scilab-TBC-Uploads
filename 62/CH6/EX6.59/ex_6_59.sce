clear;
close;
clc;
x=[1 1 -1 -1 -1 1 1 -1];
N=8;
n=0:7;
p=x(1:4)+x(5:8);
k=0:N/2-1;
WkN=exp(-%i*2*%pi*k/N);
q=[x(1:4)-x(5:8)].*WkN;
Pk=dft(p,-1);
Qk=dft(q,-1);
//X[2k]=P[k]  X[2k+1]=Q[k]
for i=1:length(k)
    if modulo(i,2)==0 then
        Xk(i)=Qk(i/2);
    else
       Xk(i)=Pk(ceil((i)/2));
    end
end
Xk=[Xk;Xk];
disp(round(Xk));