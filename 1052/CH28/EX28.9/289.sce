clc;
//Example 28.9
//page no 437
printf("Example 28.9 page no 437\n\n");
//a large deep cavern has been proposed as an ultimate disposal site for both solid hazardous and municipal wastes
V_c=0.78//approximate total volume of cavern,mi^2
V_s=.75//% volume availiable for solid waste depositry 
V=V_c*V_s*(5280)^3//volume of the cavern availible for the solid waste ,factor 5280 to convert mi^3 into ft^3
printf("\n volume of cavern availible for solid waste V=%f ft^3",V)
r=20000//proposed maximum waste feed rate to cavern ,lb/day
rho=30//average bulk density,lb/ft^3
q=(r/rho)*(6*52)//volume rate of solid deposited within the cavern in ft^3/year
printf("\n q=%f ",q);
t=V/q//time to fill the cavern
printf("\n time to fill the cavern t=%f year",t);
 
