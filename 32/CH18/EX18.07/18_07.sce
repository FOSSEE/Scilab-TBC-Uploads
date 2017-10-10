//pathname=get_absolute_file_path('18.07.sce')
//filename=pathname+filesep()+'18.07-data.sci'
//exec(filename)
p2 = 4; Cp = 1.005;
//Pressure(in bar):
p1=1.2
p6=p1
p3=4
p3=p2
p4=1
p7=0.9
//Temperatures(in K):
T1=288
T6=T1
T5=25+273
T3=323
T8=30+273
n=1.45
n1=1.3
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((n-1)/n)
T2=418.47
//Temperature at state 4(in K):
T4=T3*(p4/p3)^((n1-1)/n1)
T4=234.57
//Refrigeration effect(in kg/s):
m=10*3.5/(Cp*(T5-T4))
printf("\n RESULT \n")
printf("\nAir mass flow rate in cabin = %f kg/s",m)
//Temperature at state 7(in K):
T7=T6*(p7/p6)^((n1-1)/n1)
//Ram air mass flow rate(in kg/s):
rm=m*(T2-T3)/(T8-T7)+m
printf("\nRam air mass flow rate = %f kg/s",rm)
//Work input to the compressor(in kJ/s):
W=m*Cp*(T2-T1)
//COP:
COP=10*3.5/W
printf("\nCOP = %f",COP)