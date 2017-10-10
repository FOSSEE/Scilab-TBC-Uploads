
//Chapter 25: Sky Wave Propagation
//Example 25-5.3
clc;

//Variable Initialization
N_E = 0.8*0.111e12  //Concentration of electrons in E layer (per cubic cm)
N_F1 = 0.8*0.3086e12 //Concentration of electrons in E layer (per cubic cm)
N_F2 = 0.8*1e12     //Concentration of electrons in E layer (per cubic cm)

//Calculations
fE = 9*sqrt(N_E)    //Critical frequency in E layer (Hz)
fF1 = 9*sqrt(N_F1)  //Critical frequency in F1 layer (Hz)
fF2 = 9*sqrt(N_F2)  //Critical frequency in F2 layer (Hz)

//Result
disp(fE,"The Critical frequency in E layer in Hz")
disp(fF1,"The Critical frequency in F1 layer in Hz")
disp(fF2,"The Critical frequency in F2 layer in Hz")

//The difference appearing for fE,fF1 is a result of approximation
