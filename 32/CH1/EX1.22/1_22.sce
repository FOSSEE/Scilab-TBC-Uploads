//pathname=get_absolute_file_path('1.22.sce')
//filename=pathname+filesep()+'1.22-data.sci'
//exec(filename)
//Total mass of system of gas(in kg):
M=5
//Compostion of Nitrogen:
n=0.80
//Compostion of Oxygen:
o=0.18
//Composition of Carbon dioxide:
c=0.02
//Compression ratio for Oxygen:
ro=1.4
//Compression ratio for Nitrogen:
rn=1.4
//Compression ratio for Carbon dioxide:
rc=1.3
//Universal gas constant(in J/kg-K):
R=8314
//Molecular weight of Nitrogen:
mwn=28
//Molecular weight of Oxygen:
mwo=32
//Molecular weight of Carbon dioxide:
mwc=44
//Gas constant for Nitrogen(in J/kg-K):
Rn=R/mwn
//Gas constant for Oxygen(in J/kg-K):
Ro=R/mwo
//Gas constant for Carbon dioxide(in J/kg-K):
Rc=R/mwc
//Gas constant for mixture(in J/kg-K):
Rm=n*Rn+o*Ro+c*Rc
//Specific heat at constant pressure for Nitrogen(in kJ/kg-K):
Cpn=(rn/(rn-1))*Rn
//Specific heat at constant pressure for Oxygen(in kJ/kg-K):
Cpo=(ro/(ro-1))*Ro
//Specific heat at constant pressure for Carbon dioxide(in kJ/kg-K):
Cpc=rc/(rc-1)*Rc
//Specific heat at constant pressure for the mixture(in kJ/kg-K):
Cpm=n*Cpn+o*Cpo+c*Cpc
//Number of moles of Nitrogen:
nn=n*M/mwn
//Number of moles of Oxygen:
no=o*M/mwo
//Number of moles of Carbon dioxide:
nc=c*M/mwc
//Total number of moles:
nt=nn+no+nc
//Mole fraction of Nitrogen:
xn=nn/nt
//Mole fraction of Oxygen:
xo=no/nt
//Mole fraction of Carbon dioxide:
xc=nc/nt
//Molecular weight of the mixture
mwm=xn*mwn+xo*mwo+xc*mwc
printf("\n\n RESULT \n\n")
printf("\n\n The molecular weight of the mixture = %f kg/kmol \n\n",mwm)