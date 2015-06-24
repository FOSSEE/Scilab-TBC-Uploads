pathname=get_absolute_file_path('17_30.sce')
filename=pathname+filesep()+'17_30_data.sci'
exec(filename)
//Indicated power(in kW)
ip=(pim*10^5*L*0.25*%pi*D^2*n)/(60000*T)
//Brake power(in kW)
bp=(g*W*%pi*(De)*N)/(60000*T)
//Heat supplied(in kJ/min)
H=Vg*CV/T
//Heat equivalent of bp(in kJ/min)
Hbp=bp*60
//Heat lost in jacket cooling water(in kJ/min)
Hc=(Vc*dwc*Cvw)/T
//Volume of air used at NTP(in m^3)
Va=v*(Ta/T2)*(Pg/760)
//Mass of air used(in kg/min)
ma=(Va*Pa)/T
//Mass of gas at NTP(in kg/min)
mg=(p*10^5*V)/(R*Ta*30)
//Total mass of exhaust gas(in kg/min)
m=ma+mg
//Heat lost to exhaus gases(in kJ/min)
Hex=m*(Tex-T2)*Ceg
//Heat lost by radiation(in kJ/min)
Hloss=H-(Hbp+Hc+Hex)
//Mechanical efficiency
nm=bp/ip*100
//Indicated thermal efficiency
nith=(ip*60)/H*100
printf("\n\nRESULTS\n\n")
printf("\nHeat supplied:%f\n",H)
printf("\nHeat equivalent of bp:%f\n",Hbp)
printf("\nHeat lost in jacket cooling water:%f\n",Hc)
printf("\nHeat lost to exhaust gases:%f\n",Hex)
printf("\nHeat lost to radiation:%f\n",Hloss)
printf("\nMechanical efficiency:%f\n",nm)
printf("\nIndicated thermal efficiency:%f\n",nith)
