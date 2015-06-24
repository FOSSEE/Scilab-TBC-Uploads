//pathname=get_absolute_file_path('7.20.sce')
//filename=pathname+filesep()+'7.20-data.sci'
//exec(filename)
//From steam tables:
//Saturated vapor pressure:
p5=260.96 //kPa
p15=182.60 //kPa
vg10=0.07665 // m^3/kg
vf10=0.00070 //m^3/kg
R=0.06876 //kJ/kg.K
hfg10=156.3 //kJ/kg
T=-5+273
T1=-15+273
T2=-5+273
//By Clapeyron equation:
//Value of hfg:
hfg=T*(vg10-vf10)*(p5-p15)/(15-5)
//By Clapeyron-Clausius equation:
hfg1=log(p5/p15)*R*(T1*T2)/((T2-T1))
//Deviation:
d=(hfg1-hfg)/hfg*100
printf("\nRESULT")
printf("\nhfg by Clapeyron equation = %f kJ/kg",hfg)
printf("\nhfg by Clapeyron-Clausius equation = %f kJ/kg",hfg1)
printf("\nPercentage deviation in hfg value by Clapeyron-Clausius equation compared to the value from Clapeyron equation = %f percent",d)