funcprot(0);clc; //Example 9.4 

//Initializing the variables
function[Z] =pLossRatio(RatRho,RatMu,RatL)
    Z = RatRho*RatMu^2*RatL^2;
endfunction   

//Calculations
//Case (a) : water is used
RatRho = 1;
RatMu = 1;
RatL = 10;
disp(pLossRatio(RatRho,RatMu,RatL), "(a)Ratio of pressure losses between the model and the prototype if water is used ");

RatRho = 1000/1.23;
RatMu = 1.8*10^-5/10^-3;

disp(pLossRatio(RatRho,RatMu,RatL), "(b)Ratio of pressure losses between the model and the prototype if air is used ");