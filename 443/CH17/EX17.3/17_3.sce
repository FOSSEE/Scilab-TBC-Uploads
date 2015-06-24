pathname=get_absolute_file_path('17_3.sce')
filename=pathname+filesep()+'17_3_data.sci'
exec(filename)
//Brake power
bp=(2*%pi*N*T)/60000
//Friction power
fp=ip-bp
//Percentage losses
Loss=fp/bp*100
printf("\n\nRESULTS\n\n")
printf("\nPercentage losses:%f\n",Loss)