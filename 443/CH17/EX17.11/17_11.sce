pathname=get_absolute_file_path('17_11.sce')
filename=pathname+filesep()+'17_11_data.sci'
exec(filename)
//Brake power(in kW)
bp=(2*%pi*N*T)/60000
//Brake mean effective pressure(in bar)
pbm=(bp*60000)/(L*0.25*%pi*D^2*N*0.5*k)*10^-5
//Brake thermal efficiency
nbth=(bp*3600)/(mf*CV)*100
//Compression ratio
r=((0.25*%pi*(D*10^2)^2*L*10^2)+Vcl)/Vcl
//Air standard efficiency
notto=(1-(1/(r^(y-1))))*100
//Relative efficiency
nrel=(nbth/notto)*100
printf("\n\nRESULTS\n\n")
printf("\nBrake thermal effciency:%f\n",nbth)
printf("\nRelative efficiency:%f\n",nrel)
printf("\nBrake power:%f\n",bp)
printf("\nBrake mean effective pressure:%f\n",pbm)
