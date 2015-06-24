pathname=get_absolute_file_path('17_2.sce')
filename=pathname+filesep()+'17_2_data.sci'
exec(filename)
//Net area of diagram
Net=Areap-Arean
//Average height of indicator diagram
Ht=Net/H
//Indicated power
ip=(pim*10^5*L*0.25*%pi*d^2*N*k)/60000
printf("\n\nRESULTS\n\n")
printf("\nIndicated Power:%f\n",ip)