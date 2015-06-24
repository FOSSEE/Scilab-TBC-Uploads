clear
clc

//Example 17.6
disp('Example 17.6')

//Note that for solving this example there are two ways
//One is to do this in xcos which is very easy to do
//and one can learn the same from example 17.5's solution
//To get the controller outputs at every point in xcos
//just add a scope to the leg connecting controller and
//zero order hold unit before the continuous time block

//The other method is given here so that the reader learns more
//of what all can be done in scilab
//Here we deal with the controller in time domain rather than z domain

z=%z;
N=0;
a1=-1.5353;
a2=0.5866;
b1=0.0280;
b2=0.0234;
G=(b1+b2*z^-1)*z^(-N-1)/(1+a1*z^-1+a2*z^-2);

h=0;//no process delay
s=%s;
lamda=1;
Y_Ysp=1/(lamda*s+1);//exp(-h*s) is one because h=0  Eqn 17-62

Ts=1;//sampling time
A=exp(-Ts/lamda);
//Eqn 17-63
Y_Ysp_d=(1-A)*z^(-N-1)/(1-A*z^-1);

G_DC=1/G*(Y_Ysp_d)/(1-Y_Ysp_d); //Eqn 17-61



ysp=[zeros(1,4) ones(1,16)]
Gz_CL=syslin('d',G*G_DC/(G*G_DC+1));//Closed loop discrete system
yd=flts(ysp,Gz_CL) //Discrete Output due to set point change
//plot(yd)

e=ysp-yd; //Since we know set point and the output of the system we can use 
//this info to find out the errors at the discrete time points
//note that here we have exploited in a very subtle way the property of a 
//discrete system that only the values at discrete points matter for
//any sort of calculation

//Now this error can be used to find out the controller effort
e_coeff=coeff(numer(G_DC));
p_coeff=coeff(denom(G_DC));

n=20;//Time in minutes discretized with Ts=1 min
p=zeros(1,n); //Controller effort

for k=3:n
    p(k)=(-p_coeff(2)*p(k-1)-p_coeff(1)*p(k-2)+e_coeff*[e(k-2) e(k-1) e(k)]')/p_coeff(3);
end
subplot(2,2,2)
plot2d2(p)
xtitle('Fig 17.11 (a)','Time(min)','Dahlin Controller effort (p)');

//Now we simulate the continuous version of the plant to get output in between
//the discrete point. This will help us ascertain the efficacy of the controller
//at points other than the discrete points
//Note that this is required to be checked because deltaT=1. had it been much
//smaller like 0.01 it would have been a good approx to a continuous system
//thus making this interpolation check redundant

s=%s;
Gp=syslin('c',1/(5*s+1)/(3*s+1));//continuous time version of process 
Ts_c=0.01;//sampling time for continuous system
t=Ts_c:Ts_c:length([0 p])*Ts;
p_c=matrix(repmat([0 p],Ts/Ts_c,1),1,Ts/Ts_c*length([0 p]))//hack for zero order hold
//p_c means controller effort which is continous
yc=csim(p_c,t,Gp);
subplot(2,2,1)
plot(t,yc)
plot2d2(ysp)
legend("Dahlin Controller","Set point",position=4)
xtitle('Fig 17.11 (a)','Time(min)','Output');



//=============Now we do calculations for modified Dahlin controller========//
//==========================================================================//
//Y_Ysp_d=(1-A)*z^(-N-1)/(1-A*z^-1)*(b1+b2*z^-1)/(b1+b2); //Vogel Edgar

//Page 362 just after solved example
G_DC_bar=(1-1.5353*z^-1+0.5866*z^-2)/(0.0280+0.0234)*0.632/(1-z^-1); 
//G_DC2=1/G*((1-A)*z^(-N-1))/(1-A*z^-1-(1-A)*z^(-N-1)); //Eqn 17-61
//G_DC=(1-1.5353*z^-1+0.5866*z^-2)/(0.0280+0.0234*z^-1)*0.632/(1-z^-1);

ysp=[zeros(1,4) ones(1,16)]
Gz_CL=syslin('d',G*G_DC_bar/(G*G_DC_bar+1));//Closed loop discrete system
yd=flts(ysp,Gz_CL) //Discrete Output due to set point change
//plot(yd)

e=ysp-yd; //Since we know set point and the output of the system we can use 
//this info to find out the errors at the discrete time points
//note that here we have exploited in a very subtle way the property of a 
//discrete system that only the values at discrete points matter for
//any sort of calculation

//Now this error can be used to find out the controller effort
e_coeff=coeff(numer(G_DC_bar));
p_coeff=coeff(denom(G_DC_bar));

n=20;//Time in minutes discretized with Ts=1 min
p=zeros(1,n); //Controller effort

for k=3:n
    p(k)=(-p_coeff(2)*p(k-1)-p_coeff(1)*p(k-2)+e_coeff*[e(k-2) e(k-1) e(k)]')/p_coeff(3);
end
subplot(2,2,4)
plot2d2(p)
xtitle('Fig 17.11 (b)','Time(min)','Modified Dahlin Controller effort (p)');

//Now we simulate the continuous version of the plant to get output in between
//the discrete point. This will help us ascertain the efficacy of the controller
//at points other than the discrete points
//Note that this is required to be checked because deltaT=1. had it been much
//smaller like 0.01 it would have been a good approx to a continuous system
//thus making this interpolation check redundant

s=%s;
Gp=syslin('c',1/(5*s+1)/(3*s+1));//continuous time version of process 
Ts_c=0.01;//sampling time for continuous system
t=Ts_c:Ts_c:length([0 p])*Ts;
p_c=matrix(repmat([0 p],Ts/Ts_c,1),1,Ts/Ts_c*length([0 p]))//hack for zero order hold
//p_c means controller effort which is continous
yc=csim(p_c,t,Gp);
subplot(2,2,3)
plot(t,yc)
plot2d2(ysp)
legend("Modified Dahlin Controller","Set point",position=4)
xtitle('Fig 17.11 (b)','Time(min)','Output');












