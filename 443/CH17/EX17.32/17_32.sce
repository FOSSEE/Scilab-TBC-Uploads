pathname=get_absolute_file_path('17_32.sce')
filename=pathname+filesep()+'17_32_data.sci'
exec(filename)
//Indicated power(in kW)
ip=(pim*10^5*L*0.25*%pi*D^2*N)/60000
//Brake power(in kW)
bp=(g*W*%pi*(De)*N)/60000
//Heat supplied(in kJ/min)
H=Vg*CV/60
//Heat equivalent of bp(in kJ/min)
Hbp=bp*60
//Heat lost in jacket cooling water(in kJ/min)
Hc=(Vc*dwc*Cpw)/60
//H2O produced per kg of fuel burnt(in kg/min)
mh=9*H2*Vg/60
//Total mass of wet exhaust gas(in kg/min)
m=(ma+Vg)/60
//Mass of dry exhaust gases(in kJ/min)
me=m-mh
//Heat lost to dry exhaust gases(in kJ/min)
Hexd=me*Cdeg*(Tex-Ta)
//Heat carried away by exhaust gases in form of steam(in kJ/min)
Hexs=mh*(100*Cpw+Ls+Cps*(Tsup-100)-2*Cpw*Ta)
//Unaccounted losses(in kJ)
Hloss=H-(Hbp+Hc+Hexd+Hexs)
printf("\n\nRESULTS\n\n")
printf("\nIndicated power:%f\n",ip)
printf("\nBrake power:%f\n",bp)
printf("\nHeat supplied:%f\n",H)
printf("\tpercent:%f\t",100)
printf("\nHeat equivalent of bp:%f\n",Hbp)
printf("\tpercent:%f\t",Hbp/H*100)
printf("\nHeat lost in jacket cooling water:%f\n",Hc)
printf("\tpercent:%f\t",Hc/H*100)
printf("\nHeat lost to dry exhaust gases:%f\n",Hexd)
printf("\tpercent:%f\t",Hexd/H*100)
printf("\nHeat carried away by exhaust gases in form of steam:%f\n",Hexs)
printf("\tpercent:%f\t",Hexs/H*100)
printf("\nHeat lost to radiation:%f\n",Hloss)
printf("\tpercent:%f\t",Hloss/H*100)
