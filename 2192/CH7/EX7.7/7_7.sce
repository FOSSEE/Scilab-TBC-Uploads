clc,clear
printf('Example 7.7\n\n')


SA_cylinder=%pi*(20/100)*(30/100) //total surface are of cylinder
thickness=1 //thickness of nickel coating
Volume = SA_cylinder *thickness
Density = 8.9//density of Nickel 
Mass= Density * Volume

Z=0.000304 //electrochemical equivalent of nickel
T=2*60*60 //rime in seconds
I = Mass/(Z*T) //current

volts=10
Energy=volts*I*T /(1000*3600) //energy consumed in 2 hours
printf('Electrical energy used = %f kWh',Energy)
