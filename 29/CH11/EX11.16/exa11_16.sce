//caption:determine_Kp_Kv_Ka
//example 11_16
//page 485
s=%s;
syms t;
num=10
den=sym('s^2+6*s+10');
GH=num/den;
GH=simple(GH);
disp(GH,"G(s)H(s)=");
Kp=limit(GH,s,0);//static positional error coefficient
disp(Kp,"static positional error coefficient=");
Kv=limit(s*GH,s,0);//static velocity error coefficient
disp(Kv,"static velocity error coefficient=");
Ka=limit(s^2*GH,s,0);//static acceleration error coefficient
disp(Ka,"static acceleration error coefficient=");
