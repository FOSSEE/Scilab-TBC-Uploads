//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-16, Example 4, Page 422
//Title: Dryer Kinetics and Scale-up
//==========================================================================================================

clear
clc

//INPUT
Qfi=0.20;//Initial moisture fraction
Qfbar=0.04;//Average final moisture fraction
rhos=2000;//Density of solid in kg/m^3
Cps=0.84;//Specific heat of solids in kJ/kg K
Fo=7.6E-4;//Flow rate of solids in kg/m^3
Tsi=20;//Inital temperature of solids in degree C
rhog=1;//Density of gas in kg/m^3
Cpg=1;//Specific heat of gas in kJ/kg K
uo=0.3;//Superficial gas velocity in m/s
Tgi=200;//Initial temperature of gas in degee C
L=2370;//Enthalpy of liquid in kJ/kg
Cpl=4.2;//Specific heat of liquid in kJ/kg K
dt=0.1;//Diameter of reactor in m
Lm=0.1;//Length of fixed bed in m
ephsilonm=0.45;//Void fraction of fixed bed
pi=3.14;
Fo1=1;//Feed rate for commercial-scale reactor in kg/s

//CALCULATION
//(a)Bed temperature
Teguess=50;//Guess value of Te
function[fn]=solver_func(Te)//Function defined for solving the system
    fn=(pi/4)*dt^2*uo*rhog*Cpg*(Tgi-Te)-Fo*(Qfi-Qfbar)*[L+Cpl*(Te-Tsi)]-Fo*Cps*(Te-Tsi);
endfunction
[Te]=fsolve(Teguess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(53) for Te

//(b)Drying time for a particle
xguess=2;//Guess value of x, ie term tou/tbar
function[fn]=solver_func1(x)//Function defined for solving the system
    fn=1-(Qfbar/Qfi)-(1-exp(-x))/x;
endfunction
[x]=fsolve(xguess,solver_func1,1E-6);//Using inbuilt function fsolve for solving Eqn.(61) for x
W=(pi/4)*dt^2*Lm*(1-ephsilonm)*rhos;//Weight of soilds in bed
tbar=W/Fo;//Mean residence time of solids from Eqn.(59)
tou=tbar*x;//Time for complete drying of a particle

//(c)Commercial-scale dryer
W1=Fo1*tbar;
Atguess=5;//Guess value of area
function[fn]=solver_func3(At)//Function defined for solving the system
    fn=At*uo*rhog*Cpg*(Tgi-Te)-Fo1*(Qfi-Qfbar)*[L+Cpl*(Te-Tsi)]-Fo1*Cps*(Te-Tsi);
endfunction
[At]=fsolve(Atguess,solver_func3,1E-6);//Using inbuilt function fsolve for solving Eqn.(53) for At
dt1=sqrt(4/pi*At);//Diameter of commercial-scale dryer
Q1=At*uo*rhog;//Flow rate necessary for the operation

//OUTPUT
printf('\nBed temperature:%f degree C',Te);
printf('\nTime for complete drying of particle:%fs',tou);
printf('\nFlow rate of gas necessary for Commercial-scale dryer:%fkg/s',Q1);

//====================================END OF PROGRAM ======================================================