//caption:determine_steady_state_speed_and_error
//example 6.10.8
//page 176
//Tm=torque constant,J=moment of inertia,f=coeff. of viscous friction, E=error detector gain
syms Tm J f t E s
Tm=75;J=10;f=5;E=1;
a=(Tm*E);
b=1/(J*s+f);
c=(a*b);
H=1;//backward path transfer function
CL=c/.H;
printf("the_overlall_transfer_function: \n" );
disp(CL,"Wo(s)/Wr(s)=");
//since Wr(s)=(2*%pi)*(1/s)
q=bfloat((2*%pi),2)
Wr=q*(1/s)
Wo=CL*Wr;
wo=ilaplace(Wo,s,t)
printf("expression_relating_load_speed_and_time:\n");
disp(wo,"wo(t)=");
a=Wo*s
Woss=limit(a,s,0);//steady state speed
Woss=dbl(Woss);
disp(Woss,"steady state speed=");
We=Wr*(10*s+5)/(10*s+80);
Wess=limit(s*We,s,0);//steady state error
Wess=dbl(Wess);
disp(Wess,"steady state error=");

