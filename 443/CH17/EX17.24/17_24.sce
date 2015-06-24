pathname=get_absolute_file_path('17_24.sce')
filename=pathname+filesep()+'17_24_data.sci'
exec(filename)
//Indicated when 1st cylinder was inoperational(in kW)
ip1=bp1234-bp234
//Indicated when 2nd cylinder was inoperational(in kW)
ip2=bp1234-bp134
//Indicated when 3rd cylinder was inoperational(in kW)
ip3=bp1234-bp124
//Indicated when 4th cylinder was inoperational(in kW)
ip4=bp1234-bp123
//Total indicated power(in kW)
ip1234=ip1+ip2+ip3+ip4
//Mechanical efficiency
nm=bp1234/(ip1234)*100
//Brake mean effective pressure(in bar)
pbm=(bp1234*60000)/(L*0.25*%pi*D^2*0.5*N*K)*10^-5
printf("\n\nRESULTS\n\n")
printf("\nTotal indicated power:%f\n",ip1234)
printf("\nMechanical efficiency:%f\n",nm)
printf("\nBrake mean effective pressure:%f\n",pbm)