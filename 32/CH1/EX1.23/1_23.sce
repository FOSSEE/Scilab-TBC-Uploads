//pathname=get_absolute_file_path('1.23.sce')
//filename=pathname+filesep()+'1.23-data.sci'
//exec(filename)
//Composition of Oxygen:
o=0.18
//Composition of Nitrogen:
n=0.75
//Composition of Carbon dioxide:
c=0.07
//Pressure of mixture(in MPa):
p=0.5
//Temperature of the mixture(in K):
t=107+273
//Total mass of the mixture(in kg):
m=5
//Molecular weight of Nitrogen:
mwn=28
//Molecular weight of Oxygen:
mwo=32
//Molecular weight of Carbon dioxide:
mwc=44
//Total values of mixture(assume):
v=1
//Mole fraction of Oxygen(by volume):
xvo=o/v
//Mole fraction of Nitrogen(by volume):
xvn=n/v
//Mole fraction of Carbon dioxide(by volume):
xvc=c/v
//Molecular weight of the mixture(in kg/kmol):
mwm=xo*mwo+xn*mwn+xc*mwc
//Mole fraction of Nitrogen(by mass):
xmn=n*mwn/mwm
//Mole fraction of Oxygen(by mass):
xmo=o*mwo/mwm
//Mole fraction of Carbon dioxide(by mass):
xmc=c*mwc/mwm
//Partial pressure of Oxygen:
po=o*p
//Partial pressure of Nitrogen:
pn=n*p
//Partial pressure of Carbon dioxide:
pc=c*p
printf("\n\n RESULT \n\n")
printf("\n\n Mole fraction of Oxygen by mass = %f ",xmo)
printf("\n Mole fraction of Nitrogen by mass = %f ",xmn)
printf("\n Mole fraction of Carbon dioxide by mass = %f ",xmc)
printf("\n\n Partial pressure of Oxygen = %f MPa",po)
printf("\n Partial pressure of Nitrogen = %f MPa",pn)
printf("\n Partial pressure of Carbon dioxide = %f MPa",pc)