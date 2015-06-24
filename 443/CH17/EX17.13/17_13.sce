pathname=get_absolute_file_path('17_13.sce')
filename=pathname+filesep()+'17_13_data.sci'
exec(filename)
//Brake power(in kW)
bp=(W*g*N*C)/60000
//Brake thermal efficiency
nbth=(bp*60)/(mf*CV)
//Indicated thermal effciency
nith=(nbth/nm)*100
//Indicated mean effective pressure(in bar)
imep=(bp*60000)/(nm*L*0.25*%pi*D^2*0.5*N*K)*10^-5
//Brake specific fuel consumption(in kg/kWh)
bsfc=(mf*60)/bp
printf("\n\nRESULTS\n\n")
printf("\nBrake thermal effciency:%f\n",nbth*100)
printf("\nIndicated thermal effciency:%f\n",nith)
printf("\nIndicated mean effective pressure:%f\n",imep)
printf("\nBrake specific fuel consumption:%f\n",bsfc)
