//caption:root_locus_and_close_loop_transfer_function
//example 12.50
//page 578
s=%s
K=8
G=K/(s*(s+4))
H=1;
GH=G*H
G=syslin('c',G)
evans(G,8)
xgrid(2)
CH=s*(s+4)+K
disp('=0',CH,"characterstics_eq,CH=")
r=roots(CH)
disp(r,"the point at which K=8")
cl=G/(1+GH)
disp(cl,"C(s)/R(s)=")



disp("part b")
g=K/(s+4)
h=1/s
gh=g*h
CL=g/(1+gh)
disp(CL,"C(s)/R(s)=")
