clear
clc

//Example 10.13
disp('Example 10.13')

s=%s;
G=4/((s+1)*(s+2)*(s+3));
G=syslin('c',G);
[ki,s_i]=kpure(G);
evans(G,ki*1.5); // plots for until K = 1.5*ki
//disp(G,"For G=");disp(ki,"K=")
disp(ki,"Max value of k for which we have closed loop stability",G,"For G=")
xtitle("$G(s)=\frac{4}{(s+1)(s+2)(s+3)}$")
sgrid();

