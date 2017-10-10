disp("Ei=((Ec+Ev)/2)+((3*K*T/4)*log(mh/me))");
disp("me=(0.328)m0 & mh=(0.55)mo");
b=1.12;  //say b=(Ec+Ev)=1.12eV
c=0.0259;  //say c=(K*T)=0.0259
d=1.6768;  //say d=(mh/me)
a=((b)/2)+(((3*c)/4)*log(d));
printf('\n The value of Ei = %f eV',a);
disp("Ef=Ei+((K*T)*log(Nd/ni))");
e=10^17;  //say e=Nd
f=10^10;  //say f=ni
g=a+((c)*log(e/f));
printf('\nThus, the Fermi level is located at %f eV above the valence band',g);