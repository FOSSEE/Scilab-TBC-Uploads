//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-18, Example 3, Page 462
//Title: Roasting Kinetics from Flowing Solids Data
//==========================================================================================================

clear
clc

//INPUT
dp=110;//Particle size in micrometer
T=900;//Temperature of roaster in degree C
tbar1=[3;10;30;50];//Reported average time in min
XBbarr=[0.840;0.940;0.985;0.990];//Reported value of average conversion
tbar=3;
XBbar=0.840;//Average conversion for tbar = 3 mins

//CALCULATION
//Uniform-Reaction Model
x=(1/tbar)*(1/(1-XBbar)-1);//Term KrCA of Eqn.(20)
n=length(tbar1);
i=1;
while i<=n
    XBbar1(i)=1-1/(1+x*tbar1(i));//Average conversion using calculated value of KrCA from Eqn.(20)
    i=i+1;
end

//Shrinking-Core, Rection Control
touguess=2;//Guess value of tou
function[fn]=solver_func(tou)//Function defined for solving the system
    fn=(1-XBbar)-(0.25*tou/tbar)+(0.05*(tou/tbar)^2)-((1/120)*(tou/tbar)^3);
endfunction
[tou]=fsolve(touguess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
i=1;
while i<=n
    XBbar2(i)=1-(0.25*tou/tbar1(i))+(0.05*(tou/tbar1(i))^2)-((1/120)*(tou/tbar1(i))^3);//Average conversion using calculated value of tou from Eqn.(23)
    i=i+1;
end

//Shrinking-Core, Diffusion Control
touguess1=2;//Guess value of tou
function[fn]=solver_func1(tou)//Function defined for solving the system
    fn=(1-XBbar)-(1/5*tou/tbar)+(19/420*(tou/tbar)^2)-(41/4620*(tou/tbar)^3)+(0.00149*(tou/tbar)^4);
endfunction
[tou1]=fsolve(touguess1,solver_func1,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
i=1;
while i<=n
    //Average conversion using calculated value of tou from Eqn.(23)
    XBbar3(i)=1-(1/5*tou1/tbar1(i))+(19/420*(tou1/tbar1(i))^2)-(41/4620*(tou1/tbar1(i))^3)+(0.00149*(tou1/tbar)^4);
    i=i+1;
end

//OUTPUT
printf('\n\t\t\t\tXBbar calculated for Models');
printf('\nReported Data');
printf('\ntbar(min)\tXBbar,obs\tUniform Reaction\tShrinking-Core, Rection Control\t\tShrinking-Core, Diffusion Control');
i=1;
while i<=n
    mprintf('\n%f\t%f\t%f\t\t%f\t\t\t\t%f',tbar1(i),XBbarr(i),XBbar1(i),XBbar2(i),XBbar3(i));
    i=i+1;
end

//====================================END OF PROGRAM ======================================================