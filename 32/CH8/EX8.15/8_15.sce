//pathname=get_absolute_file_path('8.15.sce')
//filename=pathname+filesep()+'8.15-data.sci'
//exec(filename)
//Specific heat of water:
Cpw=4.18
//From steam tables:
h2=2960.7 //kJ/kg
s2=6.3615 //kJ/kg
s3=s2
x3=0.863
h3=2404.94 //kJ/kg
h7=358.59 //kJ/kg
s10=s3
x10=0.754
h10=1982.91 //kJ/kg
//Mass pf moisture in separator(in kg):
m1=(1-x3)*0.5
//Mass of steam entering LPT(in kg):
m2=0.5-m1
//Mass of water entering the hot well(in kg):
m3=0.5+m1
//Temperature of water leaving hotwell(in C):
T=(m3*90+m2*40)
//Heat transferred per kg steam generated:
Q=0.5*(h3-h7)
printf("\n RESULT \n")
printf("\nTemperature of water leaving hotwell = %f C",T)
printf("\nHeat transferred per kg steam generated = %f kJ/kg steam",Q)
//Net work output(in kJ/kg):
Wnet=(h2-h3)*1+m2*(h3-h10)
//Heat added(in kJ/kg):
Qa=h2-Cpw*T
//Thermal efficiency:
n=Wnet/Qa*100
printf("\nThermal efficiency = %f percent",n)