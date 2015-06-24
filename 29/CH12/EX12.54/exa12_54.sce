//caption:obtain_state_matrix
//example 12_54
//page 583
s=%s;
g=5*(s+2)/(s*(s+1)*(s+5));
CL=syslin('c',g);
disp(CL,"C(s)/R(s)=");
SS=tf2ss(CL)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
disp(SS,"state space matrix=")
disp(Ac,"Ac",Bc,"Bc",U,"U",ind,"ind")