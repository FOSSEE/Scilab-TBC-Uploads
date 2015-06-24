clc;
AB=150;//m, distance AB
s=30;//m, sag of cable
w=45;//N/m Uniform weigth per unit length of cable

//Equation of cable, by 7.16
//Coordinates of B

xB=AB/2;//m
C=[99,105,98.4,90];//trial values

for i=1:4
    if ((30/C(i)+1)-cosh(xB/C(i)))<0.0001 then c=C(i);
    break;
end
end
yB=s+c;//m

//Maximum and minimum values of tension
Tmin=w*c;//N, To
Tmax=w*yB;//N TB
printf("Minimum value of tension in cable is Tmin= %.0f N\n",Tmin);
printf("Maximum value of tension in cable is Tmax= %.0f N\n",Tmax);
//Length of cable

S_CB=sqrt(yB^2-c^2);//m, one halph length by 7.17
S_AB=2*S_CB;//m, full length of cable

printf("Fulllength of cable is s_AB= %.0f m\n",S_AB);

