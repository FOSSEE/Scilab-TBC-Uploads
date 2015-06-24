//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-15, Example 5, Page 381
//Title: Steam Seal of a Coarse Particle Downcomer
//==========================================================================================================

clear
clc

//INPUT
dp=10^-3;//Particle diameter in m
dt=0.8;//Diameter of reactor in m
us=0.15;//Descend velocityo of solids in m/s
L=15;//Length of downcomer
deltap1=300;//Pressure in lower vessel in kPa
deltap2=240;//Pressure in upper vessel in kPa
phis=0.8;//Sphericity of solids
ephsilonm=0.45;//Void fraction of bed
myu=4E-5;//Viscosity of gas in kg/m s
rhogl=2;//Density of gas in lower vessel in kg/m^3
rhogu=1.6;//Density of gas in upper vessel in kg/m^3
rhogbar=0.5*(rhogl+rhogu);//Average density in kg/m^3
gc=1;//Conversion factor

//CALCULATION
//(a)Without steam seal
deltapfr=(deltap1-deltap2)*10^3;//Frictional pressure drop between two levels in Pa
deluguess=50;//Guess value of deltau
function[fn]=solver_func(delu)//Function defined for solving the system
    fn=(deltapfr*gc/L)-(150*(1-ephsilonm)^2*myu*delu/(ephsilonm^2*(phis*dp)^2))-(1.75*(1-ephsilonm)*rhogbar*delu^2/(ephsilonm*phis*dp));
endfunction
[delu]=fsolve(deluguess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(25) for deltau
uo=(delu-us)*ephsilonm;//Superficial gas velocity
Fg=rhogbar*uo*(pi/4)*dt^2;//Flow rate of gs up the tube

//(c)With steam seal
//For section 1 to 3
L1=10;
deluguess1=50;//Guess value of deltau
function[fn]=solver_func1(delu1)//Function defined for solving the system
    fn=(deltapfr*gc/L1)-(150*(1-ephsilonm)^2*myu*delu1/(ephsilonm^2*(phis*dp)^2))-(1.75*(1-ephsilonm)*rhogbar*delu1^2/(ephsilonm*phis*dp));
endfunction
[delu1]=fsolve(deluguess1,solver_func1,1E-6);//Using inbuilt function fsolve for solving Eqn.(25) for deltau
uou=(delu1-us)*ephsilonm;//Upward superficial gas velocity
Fgu=rhogbar*uou*(pi/4)*dt^2;//Upward flow rate of gs up the tube
//For section 3 to 2
ugd=0.15;//Downward velocity of gas
uod=ugd*ephsilonm;//Downward superficial gas velocity
Fgd=rhogbar*uod*(pi/4)*dt^2;//Downward flow rate of gas up the tube
Fgt=Fgu+Fgd;//Total flow rate of gas

//OUTPUT
printf('\nWithout steam seal');
printf('\n\tFlow rate of gas up the tube:%fkg/s',Fg);
printf('\nWith steam seal');
printf('\n\tTotal flow rate of gas:%fkg/s',Fgt);

//====================================END OF PROGRAM ======================================================