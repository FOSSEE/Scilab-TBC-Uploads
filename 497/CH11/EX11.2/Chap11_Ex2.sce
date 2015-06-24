//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-11, Example 2, Page 267
//Title: The Effect of m on Bubble-Emulsion Interchange
//==========================================================================================================

clear
clc

//INPUT
umf=0.12;//Velocity at minimum fluidization condition in cm/s
uo=40;//Superficial gas velocity in cm/s
ub=120;//Velocity of the bubble in cm/s
D=0.7;//Diffusion coefficient of gas in cm^2/s
abkbe1=1;//Bubble-emuslion interchange coefficient for non absorbing particles(m=0)
abkbe2=18;//Bubble-emuslion interchange coefficient for highly absorbing particles(m=infinity)
g=980;//Acceleration due to gravity in square cm/s^2

//CALCULATION
//For non absorbing particles m=0,etad=0
Kbc=(ub/uo)*(abkbe1);
dbguess=2;//Guess value of db
function[fn]=solver_func(db)//Function defined for solving the system
    fn=abkbe1-(uo/ub)*(4.5*(umf/db)+5.85*(D^0.5*g^0.25)/(db^(5/4)));//Eqn.(10.27)
endfunction
[d]=fsolve(dbguess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(10.27) for db
//For highly absorbing particles m=infinity, etad=1
M=abkbe2-(uo/ub)*Kbc;
//For intermediate condition
alpha=100;
m=10;
etad=1/(1+(alpha/m));//Fitted adsorption efficiency factor from Eqn.(23)
abkbe3=M*etad+(uo/ub)*Kbc;

//OUTPUT
mprintf('\nFor non absorbing particles:\n\tDiameter of bubble=%fcm\n\tBubble-cloud interchange coefficient=%fs^-1',d,Kbc);
mprintf('\nFor highly absorbing partilces:\n\tM=%f',M);
mprintf('\nFor intermediate condition:\n\tFitted adsorption efficiency factor:%f\n\tBubble-emuslion interchange coefficient:%fs^-1',etad,abkbe3);

//====================================END OF PROGRAM ======================================================