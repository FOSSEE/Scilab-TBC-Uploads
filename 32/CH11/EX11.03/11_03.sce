//pathname=get_absolute_file_path('11.03.sce')
//filename=pathname+filesep()+'11.03-data.sci'
//exec(filename)
//Height of chimney(in m):
H=20
//Temperature of burnt gases(in K):
Tg=380+273
//Ambient air temperature(in K):
Ta=27+273
//Air supplied(in kg air per fuel):
m=2*Ta/(Tg-2*Ta)
printf("\n RESULT \n")
printf("\nAir supplied = %f kg/kg of fuel",m)
//Draught in water column(in mm):
hw=353*H*(1/Ta-(m+1)/(m*Tg))
printf("\nDraught = %f mm of water",hw)