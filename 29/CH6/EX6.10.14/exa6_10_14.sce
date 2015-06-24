//caption:determine_Mp,Ess_and_steady_state_value
//example 6.10.14
//page 185
//there are two inputs: R(s) is reference input and Tl(s)is load torque
clc;
s=%s;
A=sym('1/(0.15*s^2+0.9*s)');
K=6;
//while considering R(s),we take Tl(s)=0
G=(A*K);  //in series
H=1;
CL=G/(1+G*H);
CL=simple(CL);
disp(CL,"C(s)/R(s)=");
Wn=sqrt(40);//natural_frequency
//2*zeta*Wn=6
zeta=6/(2*Wn);//damping ratio
Mp=exp((-zeta*%pi)/sqrt(1-zeta^2))*100;//%_peak_overshoot
//steady state error for unit ramp input is:Ess= (2*zeta/Wn)
Ess=(2*zeta/Wn);//steady state error
disp(Mp,"%_peak_overshoot=");
disp(Ess,"steady state error=");
printf("Now considering effect of Tl(s),put R(s)=0\n");
H=6;
CL1=A/(1+A*H);
CL1=simple(CL1);
disp(CL1,"C(s)/-Tl(s)=");//-ve sign indicates output position lags behind the input
Tl=1/s;//given
C=-Tl*CL1;
Css=limit(s*C,s,0);
disp(Css,"steady state value of output=");