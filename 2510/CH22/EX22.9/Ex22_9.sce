//Variable declaration:
po = 53*16.0185                     //Density of oil (kg/m^3)
co = 0.46*4186.7                    //Heat capacity of oil (J/kg. C)
pi = %pi
muo = 150/1000                      //Dynamic viscosity of oil (kg/m.s)
ko = 0.11*1.7303                    //Thermal conductivity of oil (W/m. C)
qo = 28830*4.381*10**-8             //Volumetric flowrate of oil (m^3/s)
pw = 964                            //Density of water (kg/m^3)
cw = 4204                           //Heat capacity of water (J/kg. C)
muw = 0.7/3600*1.4881               //Dynamic viscosity of water (kg/m.s)
kw = 0.678                          //Thermal conductivity of water (W/m. C)
qw = 8406*4.381*10**-8              //Volumetric flowrate of water (m^3/s)
t1 = 23.5                           //Initial temperature of oil ( C)
t2 = 27                             //Final temperature of oil ( C)
T1 = 93                             //Water heating temperature of water ( C)
syms T2                               //Minimum temperature of heating water ( C)
syms A                              //Heat transfer area (m^2)
Uc = 35.4                           //Clean heat transfer coefficient (W/m^2.K)
Rf = 0.0007                         //Thermal resistance (m^2.K/W)
D = 6*0.0254                        //Inside diameter of pipe (m)

//Calculation:
vo = muo/po                         //Kinematic viscosity of oil (m^2/s)
mo = po*qo                          //Mass flowrate of oil (kg/s)
vw = muw/pw                         //Kinematic viscosity of  (m^2/s)
mw = pw*qw                          //Masss flow rate of water (kg/s)
Q1 = mo*co*(t2-t1)                  //Duty of exchanger of oil (W)
T2m = t1                            //Lowest possible temperature of the water ( C) (part 1)
Qmw = mw*cw*(T1-T2m)                //Maximum duty of exchanger of water (W) (part 2)
Q2 = mw*cw*(T1-T2)                  //Duty of exchanger of water in terms of T2 (W)
x = eval(solve(Q1-Q2,T2))                 //Solving value for T2 ( C)
T3 = x;                          //Minimum temperature of heating water ( C)
DT1 = T3-t1                         //Inlet temperature difference ( C)
DT2 = T1-t2                         //Outlet temperature difference ( C)
DTlm = (DT1-DT2)/log(DT1/DT2)       //Log mean temperature difference ( C)
Ud1 = 1/Uc+Rf                       //Dirty heat transfer coefficient (W/m^2.K) (part 3)
Ud2 = 34.6                          //Dirty heat transfer coefficient (W/m^2. C)
Q3 = Ud2*A*DTlm                     //Duty of exchanger (W) (part 4)
y = eval(solve(Q1-Q3,A))                  //Heat transfer area (m^2)
A1 = y                          //Required heat transfer area (m^2)
L = A1/(pi*D)                       //Required heat transfer length (m)
Qmo = mo*co*(T1-t1)                 //Maximum duty of exchanger of oil (W) (part 5)
Qm = Qmw                            //Maximum duty of exchanger (W)
E = Q1/Qm*100                       //Effectiveness (%)
NTU = Ud2*A1/(mw*cw)                //Number of transfer units

//Result:
disp("1. The lowest possible temperature of the water is :")
disp(T2m) 
disp(" C .")

disp("2. The log mean temperature difference is : ")
disp (DTlm)
disp(" C .")

disp("3. The overall heat transfer coefficient for the new clean exchanger is : ")
disp (Ud2)
disp ("W/m^2. C .")

disp("4. The length of the double pipe heat exchanger is : ")
disp(L)
disp (" m .")

disp("5. The effectiveness of the exchanger is : ")
disp(E)
disp("%")

disp("The NTU of the exchanger is : ")
disp(NTU)

// Answers are correct. Please calculate manually.
