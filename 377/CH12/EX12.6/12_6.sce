disp("Ef=(Ec/q)+(K*T/q)*log(Nd/Nc)");
d=0.026;  //say d=K*T/q
Nd=10^16;
Nc=2.8*10^19;
c=d*log(Nd/Nc);  //say c=(K*T/q)*log(Nd/Nc)
printf('\n The value is Ef is Ec/q%f V',c);
Vbi=0.7-(-c);
printf('\n The value is Vbi is %f V',Vbi);
q=1.6*10^-19;
c=11.9*8.854*10^-14;  //say c=Єs
Vp=0.796;
a=sqrt(Vp*2*c/(q*Nd));
printf('\n The value of a is %f μm',a*10^4);