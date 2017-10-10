//pathname=get_absolute_file_path('3.11.sce')
//filename=pathname+filesep()+'3.11-data.sci'
//exec(filename)
//Enthalpy of steam entering the injector(in kcal/kg):
h1=720;
g = 9.81;
//Enthalpy of water entering(in kcal/kg):
h2=24.6
//Enthalpy of water and steam mixture leaving the injector(in kcal/kg):
h3=100
//Depth of water injector from steam injector(in m):
z=2
//Velocity of steam entering the injector(in m/s):
v1=50
//Velocity of mixture leaving the injector(in m/s):
v3=25
//Heat loss from injector to surroundings(in kcal/kg):
q=12
//By applying SFEE:
//Steam supply rate(in kg/s):
m=(((v3^2)/2+h3*10^3*4.18)-(h2*10^3*4.18+g*z))/(((v1^2)/2+h1*10^3*4.18)-((v3^2)/2+h3*10^3*4.18)-(q*10^3*4.18))
printf("\nRESULT\n")
printf("\nSteam supply rate = %f kg/s",m)