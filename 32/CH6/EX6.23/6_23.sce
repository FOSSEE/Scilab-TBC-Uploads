//pathname=get_absolute_file_path('6.23.sce')
//filename=pathname+filesep()+'6.23-data.sci'
//exec(filename)
//Temperature of the hot water entering(in °C):
TH1= 95
//Temperature of the hot water at exit(in °C): 
TH2= 50
//Mass flow rate(in kg/s):
mH = 0.8 
//Temperature of cooling water entering(in °K):
TC1= 15+273
//Temperature of cooling water at exit(in °K):
TC2= 45+273
//Temperature of dead state(in K):
T0=25+273
//From steam tables:
h0=104.89  //kJ/kg
s0=0.3674  //kJ/kg.K
hH1=397.96 //kJ/kg
sH1=1.2500 //kJ/kg.K
hH2=209.33 //kJ/kg.K
sH2=0.7038 //kJ/kg.K
hC2=188.45 //kJ/kg.K
sC2=0.6387 //kJ/kg.K
hC1=62.99 //kJ/kg.K
sC1=0.2245 //kJ/kg.K
//Mass flow rate of cooling water(in kg/s):
mC=mH*(TH1-TH2)/(TC2-TC1)
//Exergy entering through hot water stream(in kJ/s):
AH1=mH*((hH1-h0)-T0*(sH1-s0))
//Rate of exergy increase in cold stream(in kJ/s):
dAc=mC*((hC2-hC1)-T0*(sC2-sC1))
//Second law efficiency:
n=dAc/AH1*100
//Rate of exergy loss in hot stream(in kJ/s):
dAh=mH*((hH1-hH2)-T0*(sH1-sH2))
//Exergy destruction(in kJ/s):
dA=dAh-dAc
printf("\nRESULT\n")
printf("\nSecond law efficincy = %f percent",n)
printf("\nExergy destruction = %f kJ/s",dA)