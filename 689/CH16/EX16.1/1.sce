clc; funcprot(0);
//Example 16.1 Horsepower required at sea level
// Initialisation of variables
W = 2000;
b = 36;
c = 6;
Dp = 3.8;           // Parasite drag equivalent

// Calculations
S = b*c;
WingLoading = W/S;
VeloCoeff = sqrt(WingLoading/0.00256)
Hp_WingCoeff = 0.00256*S/375;
Hp_parCoeff = 0.00327*Dp/375;

alp = [-4 -3 -2 -1 0 4 8 12 16 18 19 20];
Cl = [0.07 0.14 0.215 0.285 0.36 0.6455 0.93 1.19 1.435 1.545 1.560 1.540];         // Values from fig 8.8
Cd = [0.010 0.010 0.012 0.014 0.017 0.033 0.060 0.095 0.139 0.164 0.180 0.206];    // Values from fig 8.8


Result = zeros(12,7);
Result(:,1) = alp';
Result(:,2) = Cl';
Result(:,3) = Cd';
Result(:,4) = 60.0*diag(inv(diag(sqrt(Cl)')));        // Using equation 15.5.5
Result(:,5) = diag(diag(Result(:,3))*diag(Result(:,4)^3))*Hp_WingCoeff;
Result(:,6) = Result(:,4)^3*Hp_parCoeff;
Result(:,7) =  Result(:,5) + Result(:,6);

//Results
disp(Result,"!! alpha  Cl        Cd       V            HP wing      HP Par       HP Total   !!") ;
clf();
plot2d(Result(:,4),[Result(:,5) Result(:,6) Result(:,7)]);
legend(['HP Req Wing'; 'HP Req Par'; 'HP Req Total'],2);
xlabel("Miles Per Hour");
ylabel("HorsePower");
title("Horsepower required for various airspeeds ");
set(gca(),"grid",[1 1])
 
