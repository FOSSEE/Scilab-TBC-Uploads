//pathname=get_absolute_file_path('8.17.sce')
//filename=pathname+filesep()+'8.17-data.sci'
//exec(filename)
//State of steam entering HP stage : 10 MPa, 600ºC
//State of steam entering LP stage: 2 MPa, 400ºC
//Condenser pressure: 10 KPa
//Output(in MW):
P=10
//From steam tables:
h1=3625.3 //kJ/kg
s1=6.9029 //kJ/kg.K
s2=s1
s3=s2
h2=3105.08 //kJ/kg
x3=0.834
h3=2187.43
h6=908.79 //kJ/kg
h5=191.83 //kJ/kg
h4=h5
h7=h6
//Steam bled per kg of steam passing through HP stage:
mb=(h6-h5)/(h2-h5)
printf("\n RESULT \n")
printf("\nSteam bled per kg of steam passing through HP stage = %f kg",mb)
//Mass of steam leaving boiler(in kg/s):
m=P*10^3/((h1-h2)+(1-mb)*(h2-h3))
//Heat supplied to the boiler(in kJ/s):
Q=m*(h1-h7)
printf("\nHeat added = %f kJ/s",Q)