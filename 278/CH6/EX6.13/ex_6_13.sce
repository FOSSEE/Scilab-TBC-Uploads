Mmax=440
Mmin=-220
sigmay=410*10^6
sigmau=550*10^6
sigmae=0.5*sigmau
FS=2
syms d
Tmax=330
Tmin=-110
Tm=(Tmax+Tmin)/2
taum=(16*Tm)/(%pi*d^3)
disp(taum,"Mean shear stress=")
Tv=(Tmax-Tmin)/2
tauv=(16*Tv)/(%pi*d^3)
disp(tauv,"Variable shear stress=")
taue=0.55*sigmae
Ksur=0.62
Ksz=0.85
Kfs=1
tauy=o.5*sigmay//yield stress in shear loading is taken as one half of yield stress in reverse bending
taues=taum+((tauv*tauy*Kfs)/(taue*Ksur*Ksz))
Mm=(Mmax+Mmin)/2
disp(Mm,"Mean bending moment=")
Mv=(Mmax-Mmin)/2
disp(Mv,"Variable bending moment=")
syms d
Z=(%pi/32)*d^3
disp(Z,"Section modulus=")
sigmam=Mm/Z
disp(sigmam,"Mean bending stress=")
sigmav=Mv/Z
disp(sigmav,"Variable bending stress=")
Kfb=1
sigmaeb=sigmae
sigmane=sigmam+((sigmav*sigmay*Kfb)/(sigmaeb*Ksur*Ksz))
taues=(205*10^6)/2
d=39.5
disp(d,"d=")


