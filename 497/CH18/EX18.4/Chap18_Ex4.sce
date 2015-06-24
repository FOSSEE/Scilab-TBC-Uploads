//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-18, Example 4, Page 462
//Title: Scale-up of a Reactor with Flowing Solids
//==========================================================================================================

clear
clc

//INPUT
W=1;//Bed weight in kg
F1=0.01;//Solid feed rate in kg/min
dp=[200;600];//Particle size in micrometer
XBbar=[0.85;0.64];//Average conversion for corresponding particle sizes
rhos=2500;//Density of solid in kg/m^3
ephsilonm=0.4;//Void fracton of fixed bed
F11=4;//Feed rate of solids in tons/hr
XBbar1=0.98;
dp1=600;
pi=3.14;

//CALCULATION
//Shrinking-Core, Rection Control
n=length(dp);
i=1;
touguess=2;//Guess value of tou
while i<=n
    function[fn]=solver_func2(tou)//Function defined for solving the system
        fn=(1-XBbar(i))-(0.25*tou/107)+(0.05*(tou/107)^2)-((1/120)*(tou/107)^3);
    endfunction
    [tou(i)]=fsolve(touguess,solver_func2,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
    i=i+1;
end
tou1=tou(2);

//For a single stage fluidized roaster
tbar1=0.25*(tou1/(1-XBbar1))/60;//Mean residence time of solids in reactor in hr from Eqn.(24)
W1=F11*tbar1;
dtguess=2;//Guess value of tou
function[fn]=solver_func3(dt)//Function defined for solving the system
    fn=W1*10^3-(pi/4)*dt^2*0.5*dt*rhos*(1-ephsilonm);//Since Lm=0.5dt
endfunction
[dt]=fsolve(dtguess,solver_func3,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
Lm=dt/2;//Length of bed required

//For a two-stage fluidized roaster
tbar2=tou1*sqrt(1/(20*(1-XBbar1)))/60;//Mean residence time of solids in reactor in hr from Eqn.(30)
W2=F11*tbar2;
dtguess1=2;//Guess value of tou
function[fn]=solver_func4(dt)//Function defined for solving the system
    fn=W2*10^3-(pi/4)*dt^2*0.5*dt*rhos*(1-ephsilonm);//Since Lm=0.5dt
endfunction
[dt1]=fsolve(dtguess,solver_func4,1E-6);//Using inbuilt function fsolve for solving Eqn.(23) for tou
Lm1=dt1/2;//Length of bed required

//OUTPUT
printf('\nSingle stage fluidized roaster');
printf('\n\tWeight of bed needed:%ftons',W1);
printf('\n\tDiameter of reactor:%fm',dt);
printf('\n\tLength of bed:%fm',Lm);
printf('\nTwo-stage fluidized roaster');
printf('\n\tWeight of bed needed:%ftons',W2);
printf('\n\tDiameter of reactor:%fm',dt1);
printf('\n\tLength of bed:%fm',Lm1);
printf('\nThese results show that this operation can be accomplished in a single bed of %ftons or in two beds of %f tons each.',W1,W2);

//====================================END OF PROGRAM ======================================================
