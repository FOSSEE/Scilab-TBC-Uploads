//Ex8.5.1.;calculate: steam flow rate,cooling water flow,plant efficiency,Heat rate

//Enthalpy at point 1 at (31 kg/cm^2)=669.6 kcal/kg
//H1=H2=H3,enthalpy remain constant during throttling
H1=669.7;//unit= kcal/kg
H2=669.7;//unit= kcal/kg
H3=669.7;//unit= kcal/kg
//At point 3,
P3=9.55;//unit= kg/cm^2
//specific volume
vs3=0.22;//unit=m^3/kg
//Entropy
S3=1.580
T3=190;//unit=degree C,(degree of superheat=13 degree C)
//S4_s at 0.34 kg/cm^2=S3
//x4_s=0.838
//and H4_s=hs+xL
H4_s=72+(0.838*556)
printf(" H4_s=%f kcal/kg",H4_s)
//Isentropic turbine work=H3-H4_s
ITW=H3-H4_s;
printf("\n Isentropic turbine work=%f kcal/kg",ITW);
//Actual turbine work
ATW=0.80*ITW;
printf("\n Actual turbine work=%f kcal/kg",ATW);
H4=669.7-ATW;
printf("\n H4=%f kcal/kg",H4)
h5_6=72;//unit= kcal/kg; (Ignoring pump work)
//sensible heat   h7=h5=25 kcal/kg
h5=25;//unit=kcal/kg
h7=25;//unit=kcal/kg
//Turbine steam flow
TSF=(250*0.860*10^6)/(ATW*0.9);
printf("\n Turbine steam flow=%f kg/hr",TSF);
//let
m4=TSF;
//Turbine volume flow
TVF=(TSF/60)*vs3;
printf("\n Turbine volume flow=%f m^3/min",TVF);
//cooling water flow m7:m7(h5_6-h7)=m4(H4-h5_6)
m7=((H4-h5_6)/(h5_6-h7))*m4;
printf("\n cooling water flow m7=%f kg/hr",m7);
Heat_added=H1-h5_6;
printf("\n Heat_added=%f kcal/kg",Heat_added);
//plant efficiency=(Actual Turbine work*nmg)/Heat added
//nmg=combined mechanical and electrical efficiency of turbine-generator
nmg=0.90;
Plant_efficiency=(ATW*nmg)/Heat_added;
plant_efficiency=Plant_efficiency*100;
printf("\n Plant Efficiency nplant=%f persent",plant_efficiency);
//Plant heat rate=(860*Heat_added)/net_work
//net_work=105.36*0.90
Plant_heat_rate=(860/Plant_efficiency);
printf("\n Plant heat rate=%f kcal/kWH",Plant_heat_rate);


//The value of "turbine steam flow" is wrong due to calculating mistak in textbook,due to which the further value related with it is given wrong
//The values are corrected in this program
