disp("γ=sqrt(2*Єs*q*Na)/cox");
es=11.9*8.85*10^-14;
q=1.6*10^-19;
Na=10^17;
eox=3.9*8.85*10^-14;  //say eox=Єox
dox=20*10^-7;
cox=eox/dox;
printf('\n The value of Cox is %fnF/cm^2',cox*10^9);
c=sqrt(2*es*q*Na)/cox;
printf('\n The value of γ is %fV^-0.5',c);
disp("Vt=vt0+((γ/sqrt(2*φb))*(sqrt(1+(Vsb/(2*φb)))-1))");
Vt0=-0.09;
d=0.75;  //say d=γ
b=0.42;  //say b=φb
Vsb=2.5;
Vt=Vt0+((d/sqrt(2*b))*(sqrt(1+(Vsb/(2*b)))-1));
printf('\n The value of Vt is %fV',Vt);