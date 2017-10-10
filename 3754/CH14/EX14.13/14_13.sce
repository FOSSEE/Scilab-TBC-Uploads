clear//

//Variables

ICBO = 10 * 10**-3                    //Leakage current (in milli-Ampere)
beta=50;hFE=50;
T2 = 50.0                             //Temperature (in degree Celsius)  
T1 = 27.0                             //Temperature (in degree Celsius)

//Calculation

//Case (a)

IB = 0.25                             //Base current (in milli-Ampere)
IC = beta * IB + (1 + beta)* ICBO     //Value of new collector current (in milli-Ampere)

//Case (b)

ICBO1 = ICBO * 2**((T2 - T1)/10)      //ICBO at 50 degree celsius (in milli-Ampere)
IC1 =  beta * IB + (1 + beta)* ICBO1  //Value of new collector current (in milli-Ampere)

//Result

printf("\n Collector current when IB = 0.25 mA is  %0.3f  mA.\nCollector current at 50 degree Celsius is  %0.2f  mA.",IC,IC1)
