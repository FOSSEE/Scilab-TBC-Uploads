//define s11 parameter of the transistor
s11=0.7*exp(%i*(125)/180*%pi);

//compute the maximum gain achievable by the input matching network
Gs_max=1/(1-abs(s11)^2);
Gs_max_dB=10*log10(Gs_max)

//find the reflection coefficient for the maximum gain
Gs_opt=conj(s11);

//draw a straight line connecting Gs_opt and the origin
set(gca(),"auto_clear","off");
plot([0 real(Gs_opt)],[0 imag(Gs_opt)],'b');
plot(real(Gs_opt),imag(Gs_opt),'bo');

//specify the angle for the constant gain circles
a=(0:360)/180*%pi;

//plot source gain circles
gs_db=[-1 0 1 2 2.6];
gs=exp(gs_db/10*log(10))/Gs_max;

for n=1:length(gs)
   dg=gs(n)*conj(s11)/(1-abs(s11)^2*(1-gs(n)));
   rg=sqrt(1-gs(n))*(1-abs(s11)^2)/(1-abs(s11)^2*(1-gs(n)));
   plot(real(dg)+rg*cos(a),imag(dg)+rg*sin(a),'r','linewidth',2);
end;