pathname=get_absolute_file_path('17_21.sce')
filename=pathname+filesep()+'17_21_data.sci'
exec(filename)
//Net indicated mean effective pressure(in bar)
imepn=wlep-plep
//Dead cycles per minute
Dc=(N/2)-Wc
//Frictional power(in kW)
fp=((imepn*10^5*0.25*%pi*D^2*L*Wc)-(pfm*10^5*0.25*%pi*D^2*L*Dc))/60000
//Indicated power(in kW)
ip=(imepn*10^5*0.25*%pi*D^2*L*0.5*N)/60000
//Brake power(in kW)
bp=ip-fp
//Mechanical efficiency
nm=bp/ip*100
printf("\n\nRESULTS\n\n")
printf("\nBrake power:%f\n",bp)
printf("\nMechanical efficiency:%f\n",nm)