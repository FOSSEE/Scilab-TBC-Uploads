//pathname=get_absolute_file_path('1.24.sce')
//filename=pathname+filesep()+'1.24-data.sci'
//exec(filename)
//Volume of gas in 1 chamber(in m^3):
V=3
//Partial pressure of Nitrogen(in kPa):
pn=800
//Partial pressure of Carbon dioxide(in kPa):
pc=400
//Temperature of Nitrogen(in K):
tn=480
//Temperature of Carbon dioxide(in K):
tc=390
//Compression ratio for Nitrogen:
rn=1.4
//Compression ratio for Carbon dioxide:
rc=1.3
//Universal gas constant(in J/kg-K):
R=8314
//Molecular weight of Nitrogen:
mwn=28
//Molecular weight of Carbon dioxide:
mwc=44
//Moles of Nitrogen:
nn=pn*V/(R*tn)
//Moles of Carbon dioxide:
nc=pc*V/(R*tc)
//Total no of moles:
nt=nn+nc
//Specific heat for Nitrogen at constant volume(in J/kg-K):
cvn=(R/mwn)/(rn-1)
//Specific heat for Carbon dioxide at constant volume(in J/kg-K):
cvc=(R/mwc)/(rc-1)
//Mass of Nitrogen(in kg):
mn=nn*mwn
//Mass of Carbon dioxide(in kg):
mc=nc*mwc
//Equilibrium temperature of the mixture(in K):
t=(mn*cvn*tn+mc*cvc*tc)/(mn*cvn+mc*cvc)
//Equilibrium pressure of the mixture(kPa):
p=nt*R*t/(V+V)
printf("\n\n RESULT \n\n")
printf("\n\n Equilibrium temperature = %f K ",t)
printf("\n Equilibrium pressure = %f kPa",p)
