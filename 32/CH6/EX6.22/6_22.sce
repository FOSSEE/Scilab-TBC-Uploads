//pathname=get_absolute_file_path('6.22.sce')
//filename=pathname+filesep()+'6.22-data.sci'
//exec(filename)
//Initial pressure(in MPa):
p1=6
//Final pressure(in MPa):
p2=5
//Initial temperature(in °C):
T1=400
//Atmospheric pressure(in kPa):
patm=100
//Atmospheric temperature(in °K):
Ta=20+273
//From steam tables:
h1=3177.2 //kJ/kg
s1=6.5408 //kJ/kg.K
h2=h1
T2=392.7 //°C(by interpolation)
s2=6.6172 //kJ/kg.K(//By interpolation Entropy)
h0=83.96 //kJ/kg
s0 = 0.2966 //kJ/kg
//Availability at state 1(in kJ/kg):
A1=(h1-h0)-Ta*(s1-s0)
//Availability at state 2(in kJ/kg):
A2=(h2-h0)-Ta*(s2-s0)
//Change in availibilty(in kJ/kg):
dA=A2-A1
printf("\nRESULTS\n")
printf("\nChange in availability = %f kJ/kg decrease",-dA)