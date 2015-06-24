 // g i v e n G(s)H(s) =K/ s (s+20) H(s)=1   R(s)=1/s^2
G =1+400/(s*(s+20));
h=1/G;
r=1/s^2;
e= 0.05;
disp (e," Steady state error=")
//if ess=0.02 then k=?
k=20/0.02;
disp(k,"K=");
