//clear//
clear;
clc;

//Example 22.3
//Given
vdot = 4500; //[SCFM]
yin = 0.06;
yout = 0.0002;
P = 1; //[atm]
Tiy = 20; //[C]
Tix = 25; //[C]

//Solution
//From Perry
x = [0.0308,0.0406,0.0503,0.0735]';
y20 = [0.0239,0.0328,0.0417,0.0658]';
y30 = [0.0389,0.0528,0.0671,0.1049]';
y40 = [0.0592,0.080,0.1007,0.1579]';
deltaH = -8.31*10^3; //[cal/g mol], fro NH3=NH3(aq)
//Basis:
gas_in = 100; //[g mol dry]
air_in = (1-yin)*gas_in; //[mol]
NH3_in = yin*gas_in; //[mol]
H2O_in = 2.4; //[mol]
air_out = air_in; //[mol]
//The moles of NH3 in the outlet gas,
NH3_out = air_out*(yout/(1-yout)); //[mol NH3]
//The amount of NH3 absorbed
NH3_abs = NH3_in-NH3_out; //[mol]
//Heat Effects:
//The heat of absorption 
Qa = -NH3_abs*deltaH; //[cal]
//Sensible heat changes in the gas are
Qair = air_in*7*5; //[cal]
QH2O =H2O_in*8*5; //[cal]
Qsy = 3290+96; //[cal]
//The amount of vaporization of water from the liquid 
pH2O_20 = 17.5; //[mm Hg], at 20C
pH2O_25 = 23.7; //[mm Hg], at 25C
H2O_inlet = gas_in*(pH2O_20/742.5); //[mol]
H2O_outlet = 94.02*(pH2O_25/736.3); //[mol]
//The amount of water vaporized
H2O_vaporized = H2O_outlet-H2O_inlet; //[mol]
deltaHv = 583; //[cal/g]
Qv = deltaHv*H2O_vaporized*18.02; //[cal]
//From Eq.(22.31)
Qsx = Qa-(Qv+Qsy); //[cal]

Cp = 18; //[cal/g-mol-C]
xmax = 0.031;
Tb = 40; //[C]
Ta = 25; //[C]
err =1;
while(err>0.01)
  Lb = NH3_abs/xmax;
  Tbnew = Qsx/(Lb*Cp)+Ta;
  err = Tb-Tbnew;
  Tb=Tbnew;
  xmax = xmax+0.002;
end
Lmin = Lb-NH3_in; //[mol H2O]
La = 1.25*Lmin; //[mol]
Lb = La+NH3_in; //[mol]
//The temperature rise of the liquuid is
Tb = Qsx/(Lb*Cp)+Ta; //[C]
xb = NH3_in/La; //[C]
ystar = 0.044;
//Assuming temperature to be linear function of x, so 
T = 30;
//x = 0.0137;
//Using the data given for 30C and interpolating to get the 
//initial slope for 25 and the final value ystar for 35, the
//euilibrium line is drawn
y = [0.06, 0.03,0.01,0.0002]';
ystar = [0.048,0.017,0.0055,0]';
delta_y = y-ystar;
delta_yL = [0.0125, 0.0080,0.00138]';
delta_NOy = [2.4,2.5,7.1]';
NOy = sum(delta_NOy);
disp(NOy,'The value of NOy is');  



plot(x,y20,x,y30,x,y40);
xgrid();
xlabel('x');
ylabel('y');
legend('20C','30C','40C');
title('x vs y of NH3 at different temperatures'); 
