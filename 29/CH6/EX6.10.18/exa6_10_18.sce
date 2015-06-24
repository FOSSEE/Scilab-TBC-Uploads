//caption:determine_Kp_Kv_Ka
//example 6.10.17
//page 188
s=%s;
syms t K zeta Wn;
num=K;
den=sym('s*(s^2+2*zeta*Wn*s+Wn^2)');
G=num/den;
G=simple(G);
disp(G,"G(s)=");
Kp=limit(G,s,0);//static positional error coefficient
disp(Kp,"static positional error coefficient,Kp=");
Kv=limit(s*G,s,0);//static velocity error coefficient
disp(Kv,"static velocity error coefficient,Kv=");
Ka=limit(s^2*G,s,0);//static acceleration error coefficient
disp(Ka,"static acceleration error coefficient,Ka=");
printf("for(ii):");
num=sym('100*(s+2)*(s+40)');
den=sym('s^3*(s^2+4*s+200)');
GH=num/den;
GH=simple(GH);
disp(GH,"G(s)H(s)=");
Kp=limit(GH,s,0);//static positional error coefficient
disp(Kp,"static positional error coefficient,Kp=");
Kv=limit(s*GH,s,0);//static velocity error coefficient
disp(Kv,"static velocity error coefficient,Kv=");
Ka=limit(s^2*GH,s,0);//static acceleration error coefficient
disp(Ka,"static acceleration error coefficient,Ka=");