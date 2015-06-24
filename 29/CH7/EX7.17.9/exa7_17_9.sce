//caption: gain_margin_and_phase_margin
//example 7.17.9
//page 245
s=%s;
syms w;
s1=-s;
gh=(32/(s*(s+sqrt(6))^3));
g=sym((32/(s*(s+sqrt(6))^3)));
s=%i*w;
a=eval(g);
w=sqrt(2);
b=float(eval(abs(a)));
disp(b,"at w=sqrt(2),|G(jw)H(jw)|=");
GH=syslin('c',gh);
gm=g_margin(GH);
pm=p_margin(GH);
disp(gm,"Gain margin=");
disp(pm,"Phase margin=");
disp("since gm=0 and pm=0, so system is marginally stable")