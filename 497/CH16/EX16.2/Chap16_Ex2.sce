//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-16, Example 2, Page 405
//Title: Multistage Limestone Calciner
//==========================================================================================================

clear
clc

//INPUT
F=400;//Feed rate of Calcium carbonate in tons/day
T=1000;//Operating temperature of calciner in degree celcius
deltaHr=1795;//Heat of reaction in kJ/kg
M1=0.1;//Molecular weight of Calcium carbonate in kg/mol
M2=0.056;//Molecular weight of CaO in kg/mol
M3=0.044;//Molecular weight of Carbon dioxide  in kg/mol
M4=0.029;//Molecular weight of Air in kg/mol
M5=0.029;//Molecular weight of Combustion gas in kg/mol
Cp1=1.13;//Specific heat of Calcium carbonate in kJ/kg K
Cp2=0.88;//Specific heat of CaO in kJ/kg K
Cp3=1.13;//Specific heat of Carbon dioxide in kJ/kg K
Cp4=1.00;//Specific heat of Air in kJ/kg K
Cp5=1.17;//Specific heat of Combustion gas in kJ/kg K
Tf=20;//Temperature of feed in degree celcius
ma=15;//Air required per kg of fuel in kg
uo=0.8;//Superficial gas velocity in m/s
Hc=41800;//Net combustion heat of fuel in kJ/kg
Tpi=20;//Initial temperature of solids in degree C
Tgi=1000;//Initial temperature of gas in degree C
rhoa=1.293;//Density of air in kg/m^3
pi=3.14;

//CALCULATION
mc=1;//Based on 1 kg of Calcium carbonate
Bguess=2;//Guess value of B
function[fn]=solver_func(B)//Function defined for solving the system
    phi=((ma+mc)*Cp5*B+(M3*Cp3))/Cp1;
    T3=(Tpi+(phi+phi^2+phi^3)*Tgi)/(1+phi+phi^2+phi^3);
    phiplus=30.6*B
    Tr=(T+Tpi*phiplus)/(1+phiplus);
    fn=Hc*B+Cp3*(T3-Tpi)+ma*B*Cp4*(Tr-20)-(ma+mc)*Cp5*(T-Tpi)-M3*Cp3*(T-Tpi)-M2*Cp2*(T-Tpi)-deltaHr;
    //fn=(1/20800)*(2470-T3-13.34*(Tr-20));
endfunction
[B]=fsolve(Bguess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
phi=((ma+mc)*Cp5*B+(M3*Cp3))/Cp1;
//Temperature of various stages
T1=(Tpi+(phi)*Tgi)/(1+phi);
T2=(Tpi+(phi+phi^2)*Tgi)/(1+phi+phi^2);
T3=(Tpi+(phi+phi^2+phi^3)*Tgi)/(1+phi+phi^2+phi^3);
phiplus=30.6*B
Tr=(T+Tpi*phiplus)/(1+phiplus);
eta=deltaHr/(B*Hc);//Thermal efficiency
H=B*Hc/M2;//Heat requirement
//For lower heat recovery section
Ql=(F*10^3/(24*3600))*B*ma/(rhoa*(273/(Tr+273)));//Volumetric flow rate of gas in the lower heat recovery section
dtl=sqrt(4/pi*Ql/uo);//Diameter of lower bed
//For calcination section
Qc=(F*10^3/(24*3600))*B*ma/(rhoa*(273/(T+273)));//Volumetric flow rate of gas in the calcination section
dtc=sqrt(4/pi*Qc/uo);//Diameter of calcination section
//For I stage
Q1=(F*10^3/(24*3600))*B*ma/(rhoa*(273/(T1+273)));//Volumetric flow rate of gas in the I stage
dt1=sqrt(4/pi*Q1/uo);//Diameter of I stage
//For II stage
Q2=(F*10^3/(24*3600))*B*ma/(rhoa*(273/(T2+273)));//Volumetric flow rate of gas in the II stage
dt2=sqrt(4/pi*Q2/uo);//Diameter of II stage
//For III stage
Q3=(F*10^3/(24*3600))*B*ma/(rhoa*(273/(T3+273)));//Volumetric flow rate of gas in the III stage
dt3=sqrt(4/pi*Q3/uo);//Diameter of III stage

//OUTPUT
printf('\nDiameter of lower bed:%fm',dtl);
printf('\nDiameter of calcination section:%fm',dtc);
printf('\nBed no.\t\t1\t2\t\t3');
printf('\nDiameter(m)%f\t%f\t%f',dt1,dt2,dt3);

//The value of diameter of each section is largely deviating from the values in the textbook. This is because the fuel consumption B have not been included in the energy balance equation. And the value of molecular weight is wrong by one decimal point.

//====================================END OF PROGRAM ======================================================