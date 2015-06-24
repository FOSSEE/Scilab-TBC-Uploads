//Variable declaration:
//From table 16.5:
t2 = 75.0                       //Temperature of water leaving the shell ( C)
t1 = 35.0                       //Temperature of water entering the shell ( C
T2 = 75.0                       //Temperature of oil leaving the tube ( C)
T1 = 110.0                      //Temperature of oil entering the tube ( C)
mw = 1.133                      //Mass flowrtae of water (kg/s)
cpw = 4180.0                    //Heat capacity of water (J/kg.K)
cpo = 1900.0                    //Heat capacity of oil (J/kg.K)
p = 850.0                       //Density of oil (kg/m^3)
Di = 0.01905                    //Inside diameter of tube (m)
V = 0.3                         //Average velocity of oil flow inside the tube (m/s)
Np = 2.0                        //Number of passes
Uc = 350.0                      //Overall heat transfer coefficient for clean heat exchanger (W/m^2)
Rf = 0.00027                    //Fouling factor (m^2.K/w)
pi = %pi

//Calculation:
Cw = mw*cpw                     //Water capacitance rate (W/K)
Q = Cw*(t2-t1)                  //Heat load (W)
Co = Q/(T1-T2)                  //Oil capacitance rate (W/K)
mo = Co/cpo                     //Total flowrate of oil (kg/s)
if (Cw<Co) then
    Cmin = Cw                   //Minimum capacitance rate (W/K)
    Cmax = Co                   //Maximum capacitance rate (W/K)
else
    Cmin = Co                   //Minimum capacitance rate (W/K)
    Cmax = Cw                   //Maximum capacitance rate (W/K)
end    
m_ot = p*V*(pi/4.0)*Di**2       //Oil flowrate per tube (kg/s)
Nt = mo/m_ot                    //Number of tubes per pass
N = Nt*Np                       //Number of tubes
DT1 = T2-t1                     //Temperature driving force 1 ( C)
DT2 = T1-t2                     //Temperature driving force 2 ( C)
DTlm1 = ((DT1-DT2)/log(DT1/DT2))  //Log mean temperature driving force for ideal countercurrent heat exchanger ( C)
P = (t2-t1)/(T1 - t1)           //Dimensionless parameter P
R = (T1-T2)/(t2-t1)             //Dimensionless parameter R
//From figure 16.7:
F = 0.81                        //Correction factor
DTlm2 = F*DTlm1                 //Log mean temperature driving force for shell and tube exchanger ( C)
Ud = 1.0/(1.0/Uc+Rf)            //Dirty overall heat transfer coefficient (W/m^2.K)
A = Q/(Ud*DTlm2)                //Required heat transfer area (m^2)
L = A/(N*pi*Di)                 //Tube length (m)
N = round(N*10**-1)/10**-1

//Result:
printf("1. The mass flow rate of the oil is : %.2f kg/s .",mo)
printf("2. The minimum and maximum heat capacity rate is : %.0f and %.1f  W/K",Cmin,Cmax)
printf("3. The heat load, Q is : %.0f W .",Q)
printf("4. The total number of tubes is : %f ",N)
printf("5. The tube length is : %.1f m .",L)
