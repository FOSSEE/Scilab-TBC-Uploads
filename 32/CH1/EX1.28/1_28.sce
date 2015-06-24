//pathname=get_absolute_file_path('1.28.sce')
//filename=pathname+filesep()+'1.28-data.sci'
//exec(filename)
//Volume of vessel(in m^3):
v=2
//Atmospheric pressure(in kPa):
p1=76/76*101.325
//Temperature of gas(in K):
t1=27+273.15
//Pressure difference(in kPa):
dp=70/76*101.325
//Univeresal gas constant(in kJ/kg-K):
R=8.314
//Molecular weight of hydrogen:
mwh=2
//Temperature after cooling(in case 2)(in K):
t2=10+273.15
//Case 1:
//Gas constant of hydrogen(in kJ/kg-K):
Rh=R/mwh
//Final pressure of hydrogen(in kPa):
p2=p1-dp
//Mass pumped out(in kg):
m=(p1-p2)*v/(Rh*t1)
//Case 2:(temperature reduces till 10 degrees isochorically)
//Pressure after cooling(in kPa):
p3=t2/t1*p2
printf("\n\n RESULT \n\n")
printf("\n\n Mass pumped out = %f kg",m)
printf("\n Final pressure if the temperature is reduced = %f kPa",p2)