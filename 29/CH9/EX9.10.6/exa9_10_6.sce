//caption:obtain_state_matrix
//example 9.10.6
//page 389
s=%s;
g=(s^2+3*s+2)/(s^3+9*s^2+26*s+24);
CL=syslin('c',g);
disp(CL,"C(s)/R(s)=");
SS=tf2ss(CL)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
disp(SS,"state space matrix=")
disp(Ac,"Ac",Bc,"Bc",U,"U",ind,"ind")