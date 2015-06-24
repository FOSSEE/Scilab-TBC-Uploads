clear
clc

//Example 21.3
disp('Example 21.3')


T=70;sigma=3;p=100;//p is the no. of samples
x=grand(p,1, "nor", T, sigma);
delta=0.5*sigma;
x(11:$)=x(11:$)+delta;

//Limits for Shewart charts
UCL_1=T+sigma*3;
LCL_1=T-sigma*3;

subplot(3,1,1);
plot2d(repmat(UCL_1,1,p));
plot2d(repmat(LCL_1,1,p));
plot2d(x,style=1,rect=[0,60,100,80])
xtitle('Example 21.3','Sampling number','Strength (MPa)')

//CUSUM
Cplus=zeros(100,1);Cminus=zeros(100,1);
K=0.5*sigma;H=5*sigma;
UCL_2=H;

for k=2:100
    Cplus(k)=max(0,x(k)-(T+K)+Cplus(k-1));
    Cminus(k)=max(0,(T-K)-x(k)+Cminus(k-1));
    if Cplus(k-1)>H then 
        Cplus(k)=0;
    end
    if Cminus(k-1)>H then 
        Cminus(k)=0;
    end
    
end


subplot(3,1,2);
plot2d(Cplus,style=1,rect=[0,0,100,20]);
plot2d(Cminus,style=2,rect=[0,0,100,20]);
plot2d(repmat(UCL_2,1,p));
xtitle('','Sampling number','CUSUM')
legend('Cplus','Cminus')

//EWMA
lamda=0.25;
z=x;
for k=2:100
    z(k)=lamda*x(k)+(1-lamda)*z(k-1);
end
UCL_3=T+3*sigma*sqrt(lamda/(2-lamda));
LCL_3=T-3*sigma*sqrt(lamda/(2-lamda));

subplot(3,1,3);
plot2d(repmat(UCL_3,1,p));
plot2d(repmat(LCL_3,1,p));
plot2d(z,style=1,rect=[0,65,100,75])
xtitle('','Sampling number','EWMA')


mprintf('The charts in the example and in the book differ due\n...
a different realization of data everytime the code is run\n...
due to the grand command. If we had the exact data as that given\n...
in the book our charts would have matched.')
