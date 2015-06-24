//Fuels and Combustion//
//Example 8.11//
CO=0.205;//volume of carbon monoxide in 1kg of gas sample in m3//
CO2=0.060;//volume of CO2 in 1kg of gas sample in m3//
CH4=0.042;//volume of CH4 in 1kg of gas sample in m3//
N=0.501;//volume of nytrogen in 1kg of gas sample in m3//
H2=0.194;//volume of hydrogen in 1kg of gas sample in m3//
printf('Corresponding to Combustion reactions involved we will get\nVolume of H2 needed=0.194*0.5=0.097m3\nVolume of CO needed=0.205*0.5=0.102m3\nVolume of CH4 needed=0.042*2.0=0.084m3');
printf('\nTotal volume of gases needed=0.283m3');
VA=0.283*(100/21)*(130/100);//volume of air needed in m3//
printf('\nVolume of air needed=VA=%fm3',VA);
VDCO2=0.06+0.205*1+0.042*1;//volume of dry products containig CO2 formed in m3//
printf('\nVolume of dry products containing CO2 formed=VDCO2=%fm3',VDCO2);
VDN2=0.501+1.752*79/100;//volume of dry products containig N2 formed in m3//
printf('\nVolume of dry products containing N2 formed=VDN2=%fm3',VDN2);
VDO2=1.755*21/100;//volume of dry products containig O2 formed in m3//
printf('\nVolume of dry products containing O2 formed=VDO2=%fm3',VDO2);
TVD=VDCO2+VDN2+VDO2;//total volume of dry products formed in m3//
printf('\nTotal volume of dry products formed=TVD=%fm3',TVD);
PDCO2=VDCO2*100/TVD;//percentage of dry products containig CO2 formed//
printf('\nPercentage of dry products containing CO2 formed=PDCO2=%f',PDCO2);
PDN2=VDN2*100/TVD;//percentage of dry products containig N2 formed//
printf('\nPercentage of dry products containing N2 formed=PDN2=%f',PDN2);
PDO2=VDO2*100/TVD;//percentage of dry products containig O2 formed//
printf('\nPercentage of dry products containing O2 formed=PDO2=%f',PDO2);


