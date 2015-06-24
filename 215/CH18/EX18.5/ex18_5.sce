clc;
//Example 18.5
//Let amplitude be 1 
A=1;
Dt=0.01;
T1=4;
t=0:Dt:T1/4;
for i=1:length(t)
    xt(i)=A
end
//Calculate Fourier Transform
Wmax=2*%pi*1;
K=4;
k=-(2*K):(K/1000):(2*K);
W=k*Wmax/K;
xt=xt';
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=real(XW);
W=[-mtlb_fliplr(W),W(2:1001)];
XW_Mag=[mtlb_fliplr(XW_Mag),XW_Mag(2:1001)];
subplot(2,1,1);
a=gca();
a.data_bounds=[0,0;1,1.5];
a.y_location="origin";
plot(t,xt);
xlabel('t in sec.');
title('v(t)vs t');
subplot(2,1,2);
a=gca();
a.y_location="origin";
plot(W*%pi/2,abs (XW_Mag));
xlabel('Freq in rad/sec');
ylabel('|F(jw)|')
title('|F(jw)| vs t');