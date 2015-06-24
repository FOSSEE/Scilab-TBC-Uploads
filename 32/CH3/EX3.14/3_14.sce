//pathname=get_absolute_file_path('3.14.sce')
//filename=pathname+filesep()+'3.14-data.sci'
//exec(filename)
//Ambient temperature(in K):
T1=27+273
//Temperature of air inside heat exchanger(in K):
T2=750+273
//Temperature of air leaving turbine(in K):
T3=600+273
//Temperature of air leaving the nozzle(in K):
T4=500+273
//Velocity of air entering turbine(in m/s):
c2=50
//Velocity of air entering the nozzle(in m/s):
c3=60
//Specific heat at constant pressure(in kj?kg.K):
Cp=1.005
//By applying SFEE between points 1 & 2:
//Heat transfer to air in heat exchanger(in kJ):
Q12=Cp*(T2-T1)
printf("\nRESULT\n")
printf("\nHeat transfer to air in heat exchanger =%f kJ",Q12)
//By applying SFEE between points 2 & 3:
//Power output from turbine(in kJ/s):
Wt=Cp*(T2-T3)+(c2^2-c3^2)*10^(-3)/2
printf("\nPower output from turbine = %f kJ/s",Wt)
//By applying SFEE between points 3 & 4:
//Velocity at exit of the nozzle(in m/s):
c4=sqrt(2*(Cp*(T3-T4)+(c3^2)*10^(-3)/2))
printf("\nVelocity at exit of the nozzle = %f m/s",c4)