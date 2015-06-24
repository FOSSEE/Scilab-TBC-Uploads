//caption:determine_factor_by_which_K_should_be_reduced
//example 6.10.7
//page 175
syms T K //K=forward_path_gain,T=time_constant
s=%s;
G=K/(s*(s*T+1));
G=simple(G);
printf("the_forward_path_transfer_function: \n" );
disp(G,"G(s)=");
H=1;//backward path transfer function
CL=G/.H;
CL=simple(CL);
printf("the_overlall_transfer_function: \n" );
disp(CL,"C(s)/R(s)=");
printf("the_characterstic_equation_is:\n ");
disp("s^2+s/T+K/T=0");
//from char. eq. we get Wn^2=K/T and 2*zeta*Wn=1/T, so
Wn=sqrt(K/T);//natural frequency
zeta=(1/2)*sqrt(1/K*T)
//let K1 be forward path gain when Mp1=60% and zeta1 be corresponding damping factor
syms K1 K2 zeta1 zeta2
Mp1=(exp(-(zeta1*%pi)/sqrt(1-zeta1^2)))*100//max. overshoot
//on solving we get :
zeta1=0.158
//similarly let K2 be forward path gain when Mp2=20% and zeta2 be corresponding damping factor, which gives
zeta2=0.447
//assuming time const. T to be const. we get
k=(K1/K2);
k=(zeta1/zeta2)^2;
disp(k,"K1/K2=");



