//caption:determine_Kp_Kv_Ka
//example 11_16
//page 485
s=%s;
syms t;
num=sym('100*(s+2)*(s+40)');
den=sym('(s^3*(s^2+4*s+200))');
GH=num/den;
GH=simple(GH);
disp(GH,"G(s)H(s)=");
Kp=limit(GH,s,0);//static positional error coefficient
disp(Kp,"static positional error coefficient=");
Kv=limit(s*GH,s,0);//static velocity error coefficient
disp(Kv,"static velocity error coefficient=");
Ka=limit(s^2*GH,s,0);//static acceleration error coefficient
disp(Ka,"static acceleration error coefficient=");
