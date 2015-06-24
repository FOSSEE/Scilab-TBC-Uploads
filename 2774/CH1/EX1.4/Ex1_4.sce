clc
// solution

// initialization of variables
h=0.020 // height of mercury in m
gammawater=9810 // specific weight of water in N/m^3
Patm=0.7846*101.3 // atmospheric pressure in kPa from table B.1

Pgauge=13.6*gammawater*h/1000 // pressure in Pascal from condition gammaHg=13.6*gammawater

P=(Pgauge+Patm)// absolute pressure in KPa
printf("The Pressure is %.2f kPa",P)
