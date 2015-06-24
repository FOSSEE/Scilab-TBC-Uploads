clc;
warning("off");
printf("\n\n example14.4 - pg728");
// given
D=7.66*10^-5;  //[m^2/sec] - diffusion coefficient of the helium nitrogen
P=1;  //[atm] - pressure
// (a) using the Chapman-Enskog
T(1)=323;  //[K]
T(2)=413;  //[K]
T(3)=600;  //[K]
T(4)=900;  //[K]
T(5)=1200;  //[K]
Ma=4.0026;
sigma_a=2.551*10^-10;  //[m]
etaabykb=10.22;  //[K]
Mb=28.016;
sigma_b=3.798*10^-10;  //[m] 
etabbykb=71.4;  //[K]
sigma_ab=(1/2)*(sigma_a+sigma_b);
etaabbykb=(etaabykb*etabbykb)^(1/2);
Tstar=T/(etaabbykb);
siD=[0.7205;0.6929;0.6535;0.6134;0.5865];
patm=1;
// using the formula Dab=1.8583*10^-27*(((T^3)*((1/Ma)+(1/Mb)))^(1/2))/(patm*sigma_ab*siD)
Dab=(1.8583*(10^-(27))*(((T^3)*((1/Ma)+(1/Mb)))^(1/2)))/(patm*(sigma_ab^(2))*siD)
printf("\n\n (a)");
for i=1:5;
    printf("\n at T=%fK;Dab=%em^2/sec",T(i),Dab(i));
end
// (b) using experimental diffusion coefficient and Chapman-Enskog equation
for i=1:4
    D(i+1)=D(1)*((T(i+1)/T(1))^(3/2))*(siD(1)/(siD(i+1)));
end
printf("\n\n (b)");
for i=1:5;
    printf("\n at T=%fK;Dab=%em^2/sec",T(i),Dab(i));
end
// (c)
for i=1:4
    Dab(i+1)=D(1)*(T(i+1)/T(1))^(1.75);
end
printf("\n\n (c)");
for i=1:5;
    printf("\n at T=%fK;Dab=%em^2/sec",T(i),Dab(i));
end



