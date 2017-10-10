clc;
clear;
delp=4*10^14 //excess EHP in cm^-3
deln=4*10^14 //excess EHP in cm^-3
n0=10^15 //donor atoms in cm^-3
p0=0 //in cm^-3
t=0.5*10^-6 //hole-lifetime in s
myu_n=1200 //mobility of electron in cm^2/V*s
myu_p=400 //mobility of hole in cm^2/V*s
q=1.6*10^-19 //electron charge in eV
ni=1.5*10^10 //in cm^-3
Const=0.0259 //constant value for kT in eV

//Calculation
//a)
gop=delp/t

//b)
rho_0=(q*n0*myu_n)^-1 //Before illumination
n=n0+deln //in cm^-3
p=p0+delp //in cm^-3
rho=1/(q*((myu_n*n)+(myu_p*p)))//conductivity
rho1=q*myu_p*delp //in mho/cm
Pcond=(rho*rho1)*100

//c)
delE_e=Const*log(n/ni)
delE_h=Const*log(p/ni)

mprintf("a)\n")
mprintf("photo generation rate= %g EHPs/cm^3s\n",gop)
mprintf("b)\n")
mprintf("resistivity before illumination= %1.2f ohm-cm\n",rho_0)
mprintf("resistvity after illumination= %1.3f ohm-cm\n",rho)
mprintf("percent of conductivity= %1.2f percent\n",Pcond) //The answers vary due to round off error
mprintf("c)\n")
mprintf("quasi Fermi level due to electron=Efi+%0.3f eV\n",delE_e)
mprintf("quasi Fermi level due to holes=Efi-%0.3f eV\n",delE_h)
