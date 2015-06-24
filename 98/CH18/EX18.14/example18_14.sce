//Chapter 18
//Example 18_14
//Page 449

clear;clc;

mva=10;
kv=11;
g=[%i*1.2 %i*0.9 %i*0.4];
f=[%i*1 %i*1 %i*3];

Er=kv*1000/sqrt(3);
printf("Phase enf of R phase = %d V \n", Er);

printf("(i) Total impedance to any sequence current is sum of generator and feeder impedances of that sequence currents \n");

for i=1:3
  tz(i)=g(i)+f(i);
  printf("\tTotal Z(%i) = j(%.1f) ohm \n", i,imag(tz(i)));
end

z=sum(tz);
I1=Er/z;
I2=I1;
I0=I1;

Ir=3*I0;

Vr=Er-I0*sum(g);
printf("I1 = I2 = I0 = j(%d) A \n\n", imag(I0));
printf("Fault current = j(%d) A \n\n\n", imag(Ir));

printf("(ii) Line to nuetral voltage of R-phase = %.2f V \n\n", Vr);


