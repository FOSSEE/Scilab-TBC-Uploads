sigmau=550
sigmay=400
Mmin=-150
Mmax=400
Tmin=-50

Tmax=150
Kfb=1.6
Kfs=1.3
FS=1.5
Kb=1
Ks=0.6
Ksz=0.85
Ksur=0.88
Mm=(Mmax+Mmin)/2
disp(Mm,"Mean bending moment=")
Mv=(Mmax-Mmin)/2
disp(Mv,"Variable bending moment=")
syms d
Z=(%pi/32)*d^3
disp(Z,"Section modulus=")
sigmam=(Mm*10^3)/Z
disp(sigmam,"Mean bending stress=")
sigmav=(Mv*10^3)/Z
disp(sigmav,"Variable bending stress=")
sigmaeb=sigmau/2
sigmaneb=sigmam+(sigmav*sigmay*Kfb)/(sigmaeb*Ksur*Ksz)

Tm=(Tmax+Tmin)/2
taum=(16*Tm*10^3)/(%pi*d^3)
disp(taum,"Mean shear stress=")
Tv=(Tmax-Tmin)/2
tauv=(16*Tv*10^3)/(%pi*d^3)
disp(tauv,"Variable shear stress=")
taue=sigmae*Ks
disp(taue,"Endurance limit for reversed torsional loading=")
tauy=0.5*sigmay
disp(tauy,"Yield strength in shear=")
//yield stress in shear loading is taken as one half of yield stress in reverse bending
taues=taum+((tauv*tauy*Kfs)/(taue*Ksur*Ksz))
d=33.84
disp(d,"Diameter of shaft in mm is=")






