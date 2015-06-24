pathname=get_absolute_file_path('17_28.sce')
filename=pathname+filesep()+'17_28_data.sci'
exec(filename)
//Indicated power(in kW)
ip=((imepg-imepp)*10^5*L*0.25*%pi*D^2*(N/(45*2)))/60000
//Heat supplied(in kJ/min)
H=Vf*Pf*CV/45
//Brake power(in kW)
bp=(g*W*%pi*(Dd+Dr)*N)/(60000*T)
//Mechanical efficiency
nm=bp/ip*100
//Heat equivalent of bp(in kJ/min)
Hbp=bp*60
//Heat lost in jacket cooling water(in kJ/min)
Hc=(Vc*dwc*Cvw)/45
//Unaccounted losses(in kJ/min)
Hloss=H-(Hbp+Hc)
printf("\n\nRESULTS\n\n")
printf("\nIndicated power:%f\n",ip)
printf("\nHeat supplied:%f\n",H)
printf("\nBrake power:%f\n",bp)
printf("\nMechanical efficiency:%f\n",nm)
printf("\nHeat equivalent of bp:%f\n",Hbp)
printf("\nHeat lost in jacket cooling water:%f\n",Hc)
printf("\nUnaccounted losses:%f\n",Hloss)