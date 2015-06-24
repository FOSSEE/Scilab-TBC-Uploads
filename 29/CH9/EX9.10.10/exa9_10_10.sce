//caption:obtain_state_matrix
//example 9.10.10
//page 393
s=%s;
g=(s^2+6*s+8)/((s+3)*(s^2+2*s+5));
CL=syslin('c',g);
disp(CL,"C(s)/R(s)=");
SS=tf2ss(CL)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
disp(SS,"state space matrix=")
disp(Ac,"Ac",Bc,"Bc",U,"U",ind,"ind")