pathname=get_absolute_file_path('17_31.sce')
filename=pathname+filesep()+'17_31_data.sci'
exec(filename)
//Heat supplied(in kJ/h)
H=Vg*CV*60
//Heat equivalent of bp(in kJ/hr)
Hbp=bp*60*60
//Heat lost in jacket cooling water(in kJ/hr)
Hc=(Vc*dwc*Cvw)*60
//Mass of gas used(in kg/min)
mg=Vg*Pg
//Mass of exhaust gases(in kg/min)
m=ma+mg
//Heat carried away by exhaust gases(in kJ/h)
Hex=m*Ceg*(Tex-Ta)*60
//Unaccounted losses(in kJ/h)
Hloss=H-(Hbp+Hc+Hex)
printf("\n\nRESULTS\n\n")
printf("\nHeat supplied:%f\n",H)
printf("\nHeat equivalent of bp:%f\n",Hbp)
printf("\nHeat lost in jacket cooling water:%f\n",Hc)
printf("\nHeat lost to exhaust gases:%f\n",Hex)
printf("\nHeat lost to radiation:%f\n",Hloss)
