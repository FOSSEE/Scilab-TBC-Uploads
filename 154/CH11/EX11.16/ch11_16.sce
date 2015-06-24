clc
disp("Problem 11.16")
printf("\n")

printf("Given")
disp("Vg=100V(rms)")
disp("Zg=1+i Z1=2")
Vg=100;

disp("a)")
Zg=1+%i;
Z1=2
Z=Z1+Zg
Zmag=sqrt(real(Z)^2+imag(Z)^2)
I=Vg/Zmag
PZ1=real(Z1)*(I^2)
Pg=real(Zg)*(I^2)
PT=PZ1+Pg
printf("PZ=%dW\n Pg=%dW\n PT=%dW\n",PZ1,Pg,PT);

disp("b)")
//If Z2=a+i*b
//Zg*=1-i
//Given that
//(Z1*Z2)/(Z1+Z2)=1-i
//As Z1=2 and solving for Z2
  disp(-%i,"Z2=") 
  
disp("c)")
//If Z2 is taken the value as calculated in b) then Z=1-i
Zg=1+%i;
Z1=2;
Z=1-%i;
Zt=Z+Zg
Zmag=sqrt(real(Zt)^2+imag(Zt)^2)
I=Vg/Zmag
PZ=real(Z)*(I^2)
Pg=real(Zg)*(I^2)
//To calculate PZ1 and PZ2 we need to first calculate IZ1 nad IZ2
VZ=I*(1-%i)
IZ1=VZ/Z1
IZ1mag=sqrt(real(IZ1)^2+imag(IZ1)^2)
PZ1=real(Z1)*(IZ1mag^2)
PZ2=PZ-PZ1
PT=PZ1+PZ2+Pg
printf("PZ=%dW\n Pg=%dW\n PT=%dW\n",PZ,Pg,PT);
