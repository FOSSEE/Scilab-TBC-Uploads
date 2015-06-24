pathname=get_absolute_file_path('20_4.sce')
filename=pathname+filesep()+'20_4_data.sci'
exec(filename)
//Question 20.4 
//psc (in kg/m3)
psc=ep/(r*t)
//Mass of air (in kg/cycle)
ma=nsc*V*psc
//Scavanging ratio Rsc
Rsc=(cf/(s*V*psc))
//Trapping efficiency ntr
ntr=nsc/Rsc
//Brake power (in kW)
bp=((ma*CV*nbth*s*far)/60)
//the bsfc (in kg/kWh)
bsfc=(cf*60*far/(bp))
//Short circuting (in kg/h)
sc=(cf*(1-ntr)*(60*far))
printf("\n\nRESULTS\n\n")
printf("\nbrake power: %f\n",bp)
printf("\nthe bsfc %f\n",bsfc)
printf("\nShort Circuting %f\n",sc)