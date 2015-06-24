//caption:determine_Kp_Kv_Ka
//example 6.10.17
//page 188
s=%s;
syms t;
num=sym('2*(s^2+3*s+20)');
den=sym('s*(s+2)*(s^2+4*s+10)');
GH=num/den;
GH=simple(GH);
disp(GH,"G(s)H(s)=");
input1=5;
Kp=limit(GH,s,0);//static positional error coefficient
Ess=5*(1/(1+Kp));//steady state error
e=(1/(%inf+1));
e=0;
Ess=e;
disp(Kp,"static positional error coefficient=");
disp(Ess,"steady state error=");
input2=4*t;
Kv=limit(s*GH,s,0);//static velocity error coefficient
Ess=(1/Kv)*4;//steady state error
disp(Kv,"static velocity error coefficient=");
disp(Ess,"steady state error=");
input3=(4*t^2)/2;
Ka=limit(s^2*GH,s,0);//static acceleration error coefficient
Ess=(1/Ka)*4;//steady state error
disp(Ka,"static acceleration error coefficient=");
disp("steady state error=");
disp("infinity")

