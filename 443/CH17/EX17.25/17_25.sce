pathname=get_absolute_file_path('17_25.sce')
filename=pathname+filesep()+'17_25_data.sci'
exec(filename)
//Average power output when all cylinders fire(in kW)
Pavg=(P1+P2)*0.5*(N/180)
//Power output bp when kth cylinder is cutoff
ip1=Pavg-(N/180)*W1
ip2=Pavg-(N/180)*W2
ip3=Pavg-(N/180)*W3
ip4=Pavg-(N/180)*W4
ip5=Pavg-(N/180)*W5
ip6=Pavg-(N/180)*W6
ip7=Pavg-(N/180)*W7
ip8=Pavg-(N/180)*W8
ip9=Pavg-(N/180)*W9
ip10=Pavg-(N/180)*W10
ip11=Pavg-(N/180)*W11
ip12=Pavg-(N/180)*W12
//Total indicated power(in kW)
ip=ip1+ip2+ip3+ip4+ip5+ip6+ip7+ip8+ip9+ip10+ip11+ip12
//Mechanical efficency
nm=Pavg/ip*100
//Brake mean effective pressure(in bar)
bmep=(Pavg*60000)/(L*0.25*%pi*D^2*N*K)*10^-5
printf("\n\nRESULTS\n\n")
printf("\nTotal indicated power:%f\n",ip)
printf("\nMechanical efficiency:%f\n",nm)
printf("\nBrake mean effective pressure:%f\n",bmep)
