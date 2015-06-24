//caption:determine_Wn,Wd,zeta_and_steady_state_error
//example 12_12
//page 526
s=%s;
G=sym('20/(s*(s^2+6*s+6))');
H=0.25;
CL=G/(1+G*H);
CL=simple(CL);
disp(CL,"C(s)/R(s)=");
printf("the char. eq is:")
disp("s^2+s+1=0")
Wn=sqrt(1)//natural_frequency
//2*zeta*Wn=1
zeta=1/(2*Wn);//damping ratio
d=zeta*Wn;//damping_factor
z=sqrt(1-zeta^2);
Wd=Wn*z;//damped_frequency_of_oscillation
Mp=exp((-zeta*%pi)/z)*100;//%_max.peak_overshoot
ts=4/(zeta*Wn);//settling_time
tp=%pi/(Wn*sqrt(1-zeta^2));//peak_time
tu=2*%pi/(Wn*sqrt(1-zeta^2));//first under shoot
ti=tu-tp;//time interval between max. and min. values
disp(Wn,"natural_frequency=");
disp(zeta,"damping ratio=");
disp(Wd,"damped_frequency_of_oscillation=");
disp(Mp,"%_max.peak_overshoot=");
disp(ts,"settling_time=");
disp(tp,"peak_time=");
disp(ti,"time_interval_between_max_and_min_values=");