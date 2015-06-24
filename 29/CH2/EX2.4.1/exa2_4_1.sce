//Caption:pole_zero_Plot
// example 2.4.1
//page 19
//transfer function:G(s)=(1/2((s^2+4)*(1+2.5*s))/((s^2+2)*(1+0.5*s)))
s=%s;
G=syslin('c',(1/2*((s^2+4)*(1+2.5*s))/((s^2+2)*(1+0.5*s))));
disp(G,"G(s)=");
x=plzr(G)
xtitle('pole-zero_configuration','Real_part','Img_part');
// value at s=2
a=2;
g=(1/2*((a^2+4)*(1+2.5*a))/((a^2+2)*(1+0.5*a)));
disp(g,"G(2)=");
