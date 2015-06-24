clc
pathname=get_absolute_file_path('6_3_3.sce')
filename=pathname+filesep()+'633.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
P=hr*P75
y=P/Porig
ndot=PorigBar*Vdot/(R*T)
ndotWater=ndot*y
printf(" \n Molar flowrate of Water=%f Kmol/h",ndotWater)
ndotBDA=ndot*(1-y)
printf(" \n Molar flowrate of Dry Air=%f Kmol/h",ndotBDA)
ndotO2=ndotBDA*0.21
printf(" \n Molar flowrate of Oxygen=%f Kmol/h",ndotO2)
hm=P/(Porig-P)
ha=hm*18/29
hmdot=P75/(Porig-P75)
hp=100*hm/hmdot
printf(" \n Molal Humidity=%f mol water/mol BDA",hm)
printf(" \n Absolute Humidity=%f kg water/kg BDA",ha)
printf(" \n Percentage Humidity=%f",hp)