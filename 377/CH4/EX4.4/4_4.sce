Ega=0.36;
Egb=0.72;
T=300;
K=8.617*10^-5;
disp("ni=sqrt(Nc*Nv)*exp(Eg/2*K*T)");
b = exp(-(Ega-Egb)/(2*K*T));
printf('value of (niA/niB)= %f',b);