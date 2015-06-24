funcprot(0);clc; //Example 9.3 

//Initializing the variables
Vp = 100;
cP = 340;
cM = 295;
rhoM = 7.7;
rhoP = 1.2;
muM = 1.8*10^-5;
muP = 1.2*10^-5;

//Calculations
Vm = Vp*(cM/cP);
LmByLp = 1/((Vm/Vp)*(muM/muP)*(rhoM/rhoP));
FmByFp = (rhoM/rhoP)*(Vm/Vp)^2*(LmByLp)^2;

disp(FmByFp*100, "Percentage ratio of forces (%):",Vm, 'Mean wind tunnel flow velocity(m/s) :');