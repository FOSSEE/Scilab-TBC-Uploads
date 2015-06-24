//pathname=get_absolute_file_path('12.06.sce')
//filename=pathname+filesep()+'12.06-data.sci'
//exec(filename)
//Pressure at which steam is aupplied(in bar):
p1=10
//Dryness fraction:
x=0.9
//Pressure at exhaust(in bar):
p3=1
//Occurence of cut-off:
r1=0.6
//From steam tables:
h1=2576.58 //kJ/kg
v1=0.1751 //m^3/kg
hf=417.46 //kJ/kg
//Heat added per kg of steam(in kJ/kg):
Q=h1-hf
//Specific volume at state 2(inm^3/kg):
v2=v1/r1
//Expansion ratio:
r=1/r1
//Net expansive work per kg of steam(in kJ/kg):
Wne=v1*(p1-p3)*10^2
//Expansive work per kg of steam(in kJ/kg):
We=p1*v1*10^2*log(r)-p3*10^2*(v2-v1)
//Total work per kg of steam(in kJ/kg):
Wt=Wne+We
//Fraction of work obtained by expansive working:
r2=We/Wt*100
//Thermal efficiency of cycle:
n=Wt/Q*100
printf("\n RESULT \n")
printf("\nFraction of expansive work = %f percent of total output",r2)
printf("\nThermal efficiency  = %f percent",n)
//Steam admitted per cycle when cut-off becomes unity(in kg):
m=1/r1
//Total work per cycle(in kJ):
W=(p1-p3)*v1*m*10^2
//% increase in work:
dw=(W-Wt)/Wt*100
//Modified thermal efficiency:
n1=W/(m*Q)*100
//% decrease in efficiency:
dn=(n-n1)/n*100
printf("\nPercentage increase in work = %f percent",dw)
printf("\nPercentage decrease in efficiency = %f percent",dn)