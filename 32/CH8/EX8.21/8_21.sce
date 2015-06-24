//pathname=get_absolute_file_path('8.21.sce')
//filename=pathname+filesep()+'8.21-data.sci'
//exec(filename)
//Turbine efficiency:
nt=0.80
//Boiler efficiency:
nb=0.80
//Power required(in kW):
P=9000
//From steam tables:
h1=3137 //kJ/kg
s1=6.9563 //kJ/kg.K
s2=s1
x2=0.960
h2=2638.34 //kJ/kg
hf=503.71 //kJ/kg
//Enthalpy at state 2'(in kJ/kg):
h2a=h1-(h1-h2)*nt
//Mass flow rate(in kg/s):
ms=P/(h2a-hf)
//Power developed(in kW):
P1=ms*(h1-h2a)
//Total heat consumption in the bolier(in kW):
pt=(h1-hf)*ms
//Actual heat consumption(in kJ/s):
pa=pt/nb
printf("\n RESULT \n")
printf("\nPower developed = %f kW",P1)
printf("\nActual heat consumption = %f kJ/s",pa)