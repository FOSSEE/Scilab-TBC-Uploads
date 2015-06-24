//Caption:final_value
// example 2.4.2
//page 20
//refer to fig.2.4.2 given on page 20
//poles are located at s=0,-2 and -4
//zero at s=-3
s=%s;
syms K;
g=syslin('c',((s+3))/(s*(s+2)*(s+4)));//transfer function
G=K*g;//transfer function
disp(G,"G(s)=");
//G(s)=3.2 at s=1;
//on solving we find K=12
K=12;
G=K*g;
disp(G,"G(s)=")