clear
clc

//Example 21.2
disp('Example 21.2')

//data
x=[209.6    207.6    211.1  
    183.5    193.1    202.4  
    190.1    206.8    201.6  
    206.9    189.3    204.1  
    260.     209.     212.2  
    193.9    178.8    214.5  
    206.9    202.8    189.7  
    200.2    192.7    202.1  
    210.6    192.3    205.9  
    186.6    201.5    197.4  
    204.8    196.6    225.   
    183.7    209.7    208.6  
    185.6    198.9    191.5  
    202.9    210.1    208.1  
    198.6    195.2    150.   
    188.7    200.7    207.6  
    197.1    204.     182.9  
    194.2    211.2    215.4  
    191.     206.2    183.9  
    202.5    197.1    211.1  
    185.1    186.3    188.9  
    203.1    193.1    203.9  
    179.7    203.3    209.7  
    205.3    190.     208.2  
    203.4    202.9    200.4 ]


//Original Limits
n=3;
xbar=sum(x,2)/n; //mean calculation
s=sqrt(1/(n-1)*sum((x-repmat(xbar,1,3)).^2,2)); //standard deviation calculation
p=length(xbar);//no. of subgroups
xbarbar=sum(xbar,1)/p;
sbar=sum(s,1)/p;

c4=0.8862;B3=0;B4=2.568;c=3;
sigma=1/c4*sbar/sqrt(n);
//original limits
UCL_x=xbarbar+c*sigma;//Eqn21-9
LCL_x=xbarbar-c*sigma;//Eqn 21-10

UCL_s=B4*sbar;//Eqn21-14
LCL_s=B3*sbar;//Eqn21-15

//Modified Limits
x_mod=x;
x_mod([5 15],:)=[];
n=3;
xbar_mod=sum(x_mod,2)/n; //mean calculation
s_mod=sqrt(1/(n-1)*sum((x_mod-repmat(xbar_mod,1,3)).^2,2)); //standard deviation calculation
p_mod=length(xbar_mod);//no. of subgroups
xbarbar_mod=sum(xbar_mod,1)/p_mod;
sbar_mod=sum(s_mod,1)/p_mod;

c4=0.8862;B3=0;B4=2.568;c=3;
sigma_mod=1/c4*sbar_mod/sqrt(n);
//modified limits
UCL_x_mod=xbarbar_mod+c*sigma_mod;//Eqn21-9
LCL_x_mod=xbarbar_mod-c*sigma_mod;//Eqn 21-10

UCL_s_mod=B4*sbar_mod;//Eqn21-14
LCL_s_mod=B3*sbar_mod;//Eqn21-15



mprintf('\n                 Original Limits     Modified Limits')
mprintf('\n xbar Chart Control Limits ')
mprintf('\n UCL             %f           %f',UCL_x,UCL_x_mod)
mprintf('\n LCL             %f           %f',LCL_x,LCL_x_mod)
mprintf('\n s Chart Control Limits ')
mprintf('\n UCL             %f            %f',UCL_s,UCL_s_mod)
mprintf('\n LCL             %f             %f',LCL_s,LCL_s_mod)

subplot(2,1,1);
plot2d(repmat(UCL_x,1,p));
plot(repmat(UCL_x_mod,1,p),'--');
plot2d(repmat(LCL_x,1,p));
plot(repmat(LCL_x_mod,1,p),'--');
plot2d(xbar,style=-1,rect=[0,160,30,260])
xtitle('Example 21.2','Sampling number','$\text{Thickness}\ (\AA)$')
legend('Original Limits','Modified Limits')

subplot(2,1,2);
plot2d(repmat(UCL_s,1,p));
plot2d(repmat(LCL_s,1,p));
plot(repmat(UCL_s_mod,1,p),'--');
plot(repmat(LCL_s_mod,1,p),'--');
plot2d(s,style=-1,rect=[0,0,30,30])
xtitle('','Sampling number','$\text{Standard Deviation}\ (\AA)$')
