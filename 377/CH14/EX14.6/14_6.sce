eox=3.9*8.85*10^-14;  //say eox=Єox
dox=20*10^-7;
cox=eox/dox;
printf('\n The value of Cox is %fnF/cm^2',cox*10^9);
disp("Cfb=1/((1/cox)+(Ld/Єs))");
es=11.9*8.85*10^-14;
Vt=0.0259;
q=1.6*10^-19;
Na=10^17;
Ld=sqrt(es*Vt/(q*Na));
printf('\n The value of Ld is %fnm',Ld*10^7);
Cfb=1/((1/cox)+(Ld/es));
printf('\n The value of Cfb is %fnF/cm^2',Cfb*10^9);
xdT=1.05*10^-5;
Chf=1/((1/cox)+(xdT/es));
printf('\n The value of Chf is %fnF/cm^2',Chf*10^9);