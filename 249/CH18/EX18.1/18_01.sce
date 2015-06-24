clear
clc
dp=2.4*(10^-3);L=dp/6;
//Effective mass conductivity(m3/hr.mcat)
De=5*10^-5;
//Effective thermal conductivity(KJ/hr.mcat.K)
Keff=1.6;
//For the gas film surrounding the pellet
h=160;//heat transfer coefficient(KJ/hr.m2cat.K)
kg=300;//mass transfer coefficient(m3/hr.m2cat)
//For the reaction
Hr=-160;//KJ/molA
CAg=20;//mol/m3
rA_obs=10^5;//mol/hr.m3cat
kobs=rA_obs/CAg;
Vp=3.14*(dp^3)/6;
S=3.14*(dp^2);
//Observed rate/rate if film resistance controls
ratio=kobs*Vp/(kg*S);
printf("\n Part a")
if ratio<0.01 
    printf("\n Resistance to mass transport to film should not influence rate of reaction")
else
      printf("\n Resistance to mass transport to film should influence rate of reaction")
end
printf("\n Part b")

Mw=rA_obs*(L^2)/(De*CAg);
printf("\n Mw= %f",Mw)
if Mw>4
  printf("\n Pore diffusion is influencing and hence strong pore diffusion")
else
      printf("\n Pore diffusion is  not influencing and hence weak pore diffuusion")
end
//Temp variation within pellet
dt_max_pellet=De*(CAg-0)*(-Hr)/Keff;
//Temp variation Across the gas film
dt_max_film=L*rA_obs*(-Hr)/h;
printf("\n Part c")
printf("\n dTmax,pellet is %f",dt_max_pellet)
printf(" degree C \n dTmax,film is %f",dt_max_film)
printf(" degree C")
if dt_max_pellet<1
    printf("\n Pellet is close to uniform in temperature")
else
    printf("\n There is a variation in temp within pellet")
    end
    if dt_max_film<1
    printf("\n Film is close to uniform in temperature")
else
    printf("\n There is a variation in temp within Film")

end