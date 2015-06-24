//caption:obtain_state_matrix
//example 9.10.7
//page 390
s=%s;
g=(s+3)/((s+1)*(s+2));
CL=syslin('c',g);
disp(CL,"C(s)/R(s)=");
SS=tf2ss(CL)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
disp(SS,"state space matrix=")
disp(Ac,"Ac",Bc,"Bc",U,"U",ind,"ind")