//Ex8.5.2.;calculate: hot water flow,condenser cooling water flow,cycle efficiency,plant heat rate.
H1=669.6;//unit=kcal/kg
H2=669.6;//unit=kcal/kg
//pressure at point 2,is 10.5 kg/cm^2;thus,
T2=195;//unit=degree celcius; (14 degree celcius of superheat)
s2=1.567;
vsup=0.27;
x3s=0.832;
H3s=535;//unit=kcal/kg
//Isentropic turbine work
ITW=H2-H3s;
printf(" Isentropic turbine work=%f kcal/kg",ITW);
//Actual turbine work
ATW=0.65*ITW;
printf("\n Actual turbine work=%f kcal/kg",ATW);
H3=669.6-ATW;
printf("\n H3=%f kcal/kg",H3)
//h_4-5(ignore bpump work)
h4=72.4;//unit=kcal/kg
//h6 at 27 degree c
h6=27;//unit=kcal/kg
//Turbine steam flow or hot water flow=power output/actual turbine work
TSF=(10*10^6*0.86)/ATW;
printf("\n Turbine steam flow or hot water flow=%f kg/hr",TSF);
//consider cooling water flow  m4:m3*(H3-h4)=m4(h4-h6)
//or
m4=((582.11-72.4)*0.983*10^5)/(72.4-27);
printf("\n cooling water flow=%f kg/hr",m4);
Heat_added=H1-h4
printf("\n Heat_added=%f kcal/kg",Heat_added);
//plant efficiency=Turbine work/Heat added
Plant_efficiency=(ATW/Heat_added);
plant_efficiency=Plant_efficiency*100;
printf("\n Plant Efficiency=%f persent",plant_efficiency);
//Plant heat rate=860/Plant Efficiency
Plant_heat_rate=860/Plant_efficiency;
printf("\n Plant heat rate=%f kcal/kWh",Plant_heat_rate);


//The value of m3=14.03*10^5 is given wrong in the text book;the actual value is m3=11.03*10^5
