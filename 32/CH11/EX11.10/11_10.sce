//pathname=get_absolute_file_path('11.10.sce')
//filename=pathname+filesep()+'11.10-data.sci'
//exec(filename)
//Average pressure of the steam(in bar):
p=10
//Weight of water consumed(in ton):
Ww=15
//Weight of coal produced(in ton):
Wc=1.5
//Percentage coal that caan be burnt:
n=1-0.03-0.04
//Composition of moisture in coal:
nm=0.03
//Temperature of feed water(in C):
Tf=35
//From steam tables:
hg=2778.1 //kJ/kg
//Enthalpy of steam generated(in kJ/kg):
h=hg-4.18*Tf
//Steam generated per kg of coal(in kg):
m=Ww/Wc
//Boiler efficiency:
nb=m*h/(30.1*10^3)*100
//Equivalent evaporation per kg of dry coal(in kg:
Ee=m*h/(2257*(1-nm))
//Equivalent evaporation per kg of combustible present in coal(in kg):
Eea=Ee*(1-nm)/n
printf("\n RESULT \n")
printf("\nBoiler efficiency = %f percent",nb)
printf("\nEquivalent evaporation per kg of dry coal = %f kg",Ee)
printf("\nEquivalent evaporation per kg of combustible present in coal = %f kg",Eea)