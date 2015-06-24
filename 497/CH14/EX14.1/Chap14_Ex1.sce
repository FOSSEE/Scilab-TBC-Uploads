//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-14, Example 1, Page 343
//Title: Flow with Elutriation
//==========================================================================================================

clear
clc

//INPUT
Fo=2.7;//Feed rate in kg/min
Fof=0.9;//Feed rate of fines in feed in kg/min
Foc=1.8;//Feed rate of coarse in feed in kg/min
W=17;//Bed weight in kg
kf=0.8;//Elutriation of fines in min^-1
kc=0.0125;//Elutriation of coarse in min^-1

//CALCULATION
F1guess=1;//Guess value of F1
function[fn]=solver_func(F1)//Function defined for solving the system
    fn=F1-(Fof/(1+(W/F1)*kf))-(Foc/(1+(W/F1)*kc));//Eqn.(17)
endfunction
[F1]=fsolve(F1guess,solver_func,1E-6);//Inbuilt function fsolve to solve for F1
F1f=Fof/(1+(W/F1)*kf);//Flow rate of fines in entrained streams from Eqn.(16)
F1c=Foc/(1+(W/F1)*kc);//Flow rate of coarse in entrained streams from Eqn.(16)
F2f=Fof-F1f;//Flow rate of fines in overflow streams from Eqn.(9)
F2c=Foc-F1c;//Flow rate of coarse in overflow streams from Eqn.(9)
tbarf=1/((F1/W)+kf);//Mean residence time of fines from Eqn.(12)
tbarc=1/((F1/W)+kc);//Mean residence time of coarse from Eqn.(12)

//OUTPUT
mprintf('\nFlow rate in entrained stream:\n\tFines:%fkg/min\n\tCoarse:%fkg/min',F1f,F1c);
mprintf('\nFlow rate in overflow stream:\n\tFines:%fkg/min\n\tCoarse:%fkg/min',F2f,F2c);
mprintf('\nMean residence time:\n\tFines:%fmins\n\tCoarse:%fmins',tbarf,tbarc);

//====================================END OF PROGRAM ======================================================