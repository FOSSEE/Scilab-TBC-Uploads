//Example 4.2
clc
s=%s;
num=poly([-8 0 9 -6 1],'s','coeff');
den=s*(s-2)*poly([-2 -1 2 1],'s','coeff')
xs=num/den;
disp(xs,'x(s)=')
disp(s*xs,'s*x(s)=')
[A]=pfss(s*xs)
printf("since xs becomes infinite for s=1 and s=2, the conditions of the final value theorem are not satisfied\n")
printf("Final value theorem is not applicable \n")

