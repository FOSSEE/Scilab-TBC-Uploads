//Example 
clc
syms K taud s tau t
G=K*exp(-taud*s)/(tau*s+1)
//we can use an approximation that
printf("exp(-taud*s)=(2-taud*s/2)/(2+taud*s)\n")
Gm=K*(2-taud*s/2)/((2+taud*s)*(tau*s+1));//here Gm=G
//For this model
Gma=(2-taud*s/2)/(2+taud*s);
Gmm=K/(tau*s+1);
Gm=Gma*Gmm;
GI=1/Gmm
f=1/(l*s+1);
//In order to be able to implement this transfer function let f(s)=1/(l*s+1)
//Thus IMC becomes
GI=f/Gmm
Gc=GI/(1-GI*Gm)
//This may be reduced algebraically to the form given by Eq.(18.21) with
printf("Kc=(2*tau+taud)/(2*l+taud)\n")
printf("tauI=tau+taud/2\n")
printf("tau*taud)/(2*tau+taud)\n")
printf("tau1=l*taud/2*(l+taud)\n")
