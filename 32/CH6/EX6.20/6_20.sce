//pathname=get_absolute_file_path('6.20.sce')
//filename=pathname+filesep()+'6.20-data.sci'
//exec(filename)
//Pressure of the steam(in bar):
p1=10
//Temperature(in °C):
T=500
//Final pressure(in bar):
p2=1
//From steam tables:
h10bar500 = 3478.5 //kJ/kg
s10bar500 = 7.7622 //kJ/kg.K
v10bar500 = 0.3541 //m^3/kg
h1bar400 = 3278.2 //kJ/kg
h1bar500 = 3488.1 //kJ/kg
v1bar500 = 3.565 //m^3/kg
v1bar400 = 3.103 //m^3/kg
s1bar500 = 8.8342 //kJ/kg.K
s1bar400 = 8.5435 //kJ/kg.K
h2=h10bar500
//Final temperature(in °C):
T2=(h2-h1bar400)*(T-400)/(h1bar500-h1bar400)+400
//Final entropy(in kJ/kg.K):
s2=s1bar400+(s1bar500-s1bar400)/(T-400)*(T2-400)
//Change in entropy(in kJ/kg.K):
ds=s2-s10bar500
//Final specific volume(in m^3/kg):
v2=v1bar400+(v1bar500-v1bar400)/(T-400)*(T2-400)
//Percentage volume occupied by steam:
p=v10bar500/v2*100
printf("\nRESULT\n")
printf("\nFinal temperature = %f kJ",T2)
printf("\nChange in entropy = %f kJ",ds)
printf("\nPercentage of vessel volume initially occupied by steam = %f percent",p)