s11=0.5*exp(%i*(-60)/180*%pi);
s12=0.02*exp(%i*(-0)/180*%pi);
s21=6.5*exp(%i*(+115)/180*%pi);
s22=0.6*exp(%i*(-35)/180*%pi);

Gs_max=1/(1-abs(s11)^2);
Gl_max=1/(1-abs(s22)^2);

G0=abs(s21)^2;

Gmax=Gs_max*G0*Gl_max;
Gs_max_dB=10*log10(Gs_max)
Gl_max_dB=10*log10(Gl_max)
G0_dB=10*log10(G0)
Gmax_dB=10*log10(Gmax)
Ggoal_dB=18;
Gload_dB=Ggoal_dB-G0_dB-Gs_max_dB;
Gl_opt=conj(s22);

set(gca(),"auto_clear","off");
plot([0 real(Gl_opt)],[0 imag(Gl_opt)],'b');
plot(real(Gl_opt),imag(Gl_opt),'bo');
a=(0:360)/180*%pi;
gl=exp([Gload_dB]/10*log(10))/Gl_max;
dg=gl*conj(s22)/(1-abs(s22)^2*(1-gl));
rg=sqrt(1-gl)*(1-abs(s22)^2)/(1-abs(s22)^2*(1-gl));
plot(real(dg)+rg*cos(a),imag(dg)+rg*sin(a),'b','linewidth',2);