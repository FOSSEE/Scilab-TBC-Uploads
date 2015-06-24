clc
pathname=get_absolute_file_path('3_3_1.sce')
filename=pathname+filesep()+'331.sci'
exec(filename)
moles=mass/M
printf("\n no.of moles=%f",moles)
lbmole=moles/453.6
printf("\n no.of lb moles=%f",lbmole)
Cmoles=moles
printf("\n no.of moles of carbon=%f",Cmoles)
Omoles=2*moles
printf("\n no.of moles of oxygen=%f",Omoles)
O2moles=moles
printf("\n no.of moles of dioxygen=%f",O2moles)
gramsO=Omoles*16
printf("\n no.of grams of oxygen=%f",gramsO)
gramsO2=O2moles*32
printf("\n no.of grams of oxygen=%f",gramsO2)
moleculesCO2=moles*6.02*10^(23)
printf("\n no.of molecules of CO2 = %E",moleculesCO2)