pathname=get_absolute_file_path('17_34.sce')
filename=pathname+filesep()+'17_34_data.sci'
exec(filename)
//Heat supplied(in kJ/min)
H=Vg*CV/60
//Heat equivalent of bp(in kJ/min)
Hbp=bp*60
//Heat lost in jacket cooling water(in kJ/min)
Hc=(Vc*dwc*Cpw)
//Heat lost by exhaust gases in exhaust calorimeter(in kJ/min)
Hegc=mwc*Cpw*(Te2-Te1)
//Mass of exhaust gases(in kg/min)
meg=(AF+1)*Vg/60
//Heat lost in exhaust gases(in kJ/min)
Hdeg=meg*Cpeg*(Tex-Ta)
//Total heat carried away by exhaust gases(in kJ/min)
Heg=Hdeg+Hegc
//Unaccounted losses(in kJ/min)
Hloss=H-(Heg+Hbp+Hc)
//Indicated thermal efficiency
nith=(ip*60*100)/H
//Brake thermal efficiency
nbth=(bp*60*100)/H
//Mechanical efficiency
nm=bp/ip*100
printf("\n\nRESULTS\n\n")
printf("\nHeat supplied:%f\n",H)
printf("\nHeat equivalent of bp:%f\n",Hbp)
printf("\nHeat lost in jacket cooling water:%f\n",Hc)
printf("\nHeat lost to dry exhaust gases in exhaust calorimeter:%f\n",Hegc)
printf("\nTotal heat carried away by exhaust gases:%f\n",Hdeg)
printf("\nHeat carried away by exhaust gases:%f\n",Heg)
printf("\nUnaccounted heat losses:%f\n",Hloss)
printf("\nIndicated thermal efficiency:%f\n",nith)
printf("\nBrake thermal efficiency:%f\n",nbth)
printf("\nMechanical efficiency:%f\n",nm)