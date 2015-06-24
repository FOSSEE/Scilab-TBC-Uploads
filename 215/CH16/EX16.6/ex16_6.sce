clc
//Example 16.6
disp('Given')
disp('Km=20 Kf=50')
Km=20; Kf=50;
s=poly(0,'s')
//From figure 16.20(a)
C=0.05; L=0.5;
//Performing magnitude as well as frequency scaling simultaneously
Cscaled =C/(Km*Kf)
Lscaled = L*Km/Kf
printf("Scaled values are \n")
printf("Cscaled =%d uF \t Lscaled =%d mH \n",Cscaled*10^6,Lscaled*10^3)
//Converting the Laplace transform of the circuit
//From figure 16.20(c)
disp('Vin=V1+0.5s*(1-0.2*V1)')
disp('V1=20/s')
//On substituting V1 in equation of Vin

Zin=(s^2-4*s+40)/(2*s)
disp(Zin,'Zin=')
//Now we need to scale Zin
//We will multiply Zin by Km and replace s by s/Kf
Zinscaled=horner(Km*Zin,s/Kf)
disp(Zinscaled,'Zinscaled')

