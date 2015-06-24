clc
clear 
printf("example 6.18 page number 274\n\n")

//to calculate the humidity
P = 101.3    //in kPa
pA = 3.74    //in kPa
p_AS = 7.415  //in kPa
H = (18.02/28.97)*(pA/(P-pA));
printf("humidity = %f kg H2O/kg air",H)

Hs = (18.02/28.97)*(p_AS/(P-p_AS));
printf("\n\nSaturated humidity = %f kg H2O/kg air",Hs)

%_humidity = 100*(H/Hs);
printf("\n\npercentage humidity = %f percent",%_humidity)

relative_humidity = 100*(pA/p_AS);
printf("\n\npercentage relative humidity = %f percent",relative_humidity)
