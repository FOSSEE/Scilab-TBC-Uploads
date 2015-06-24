//clear//
clear;
clc;

//Example 19.4
//Given
//x(1) = n-pentane, x(2) = n-hexane, x(3) = n-heptane and x(4) = n-octane
//xF = feed, xD = distillate and xB = bottom
xF = [4 40 50 6]'./100 //[mole fraction]
P = 1; //[atm]
xD1(2) = 0.98;
xD1(3) = 0.01;

//Solution
//The keys are n-hexane and n-heptane, and the other components are 
//sufficiently different in volatility to be distributed.
//Basis:
F = 100; //[mol]
xD1(1) = 1;
xD1(4) = 0;
D = sum(F*xF.*xD1); //[mol]
xD = (F*xF.*xD1)./(D) 
B = F-D; //[mol]
xB = (F*xF-D*xD)/B;
K_80 = [3.62,1.39,0.56,0.23]';
K_81 = [3.72,1.43,0.58]';
K_81_2 = [3.74,1.44,0.584]';
KxF = [0.145,0.556,0.280,0.014]';

//(a)
//The bubble point is 80 C, and at this temperature 
alphaLK_HK = K_80./K_80(3);
//For an approximate solution,using Eq.(19.15)
RDm = (F/D)*(((D*xD(2)/(F*xF(2)))-alphaLK_HK(2)*(D*xD(3)/(F*xF(3))))/(alphaLK_HK(2)-1))

//To use Underwood method, the K values at 80 C are converted to relative 
//volatilities and the root of Eq.(19.29) between 1 and 2.48 is found by trial.
//Since q = 1.0, the terms must sum to zero.
phi = 1.5
f = 0;
err = 1;
while(err>0.1)
  fnew = sum(((alphaLK_HK.*xD)./(alphaLK_HK-phi)));
  err = abs(f-fnew);
  if (f>fnew)
    phi=phi+0.01;
  else
    phi=phi-0.01;
  end
    f = fnew;
end
RDm = f-1;

//(b)
//To get the conditions in the upper invariant zone, using Eq.(19.24) with
VbyD = RDm+1;
DbyV = inv(VbyD);
VbyF = VbyD*D/F;
LbyV = RDm/(RDm+1);
y_80 = DbyV*xD(1:3)./(1-LbyV./K_80(1:3))  
y_81_1 = [0.046,0.637,0.317]';
x_81_1 = y_81_1./K_81 ;
//The vapor composition for lower inavariant zone is
//using Eq.(19.28), for q = 1.0
BbyVb = 0.552;
LbbyVb = 1.55;
K_83 = [1.52,0.618,0.258]';
y_83 = BbyVb*xB(2:4)./(LbbyVb./K_83-1);
y_83_3 = [0.662,0.326,0.012]'; 
x_83_3 = y_83_3./K_83 ;

disp('respectively','C',81.1,'C',83.3,'The tempeature in Lower zone and Upper zone is')
disp('respectively',y_83_3(1),'y =',x_83_3(1),'x = ','The LK composition in Lower zone is')
disp('respectively',y_83_3(2),'y =',x_83_3(2),'x =','The HK composition in Lower zone is')
disp('respectively',y_81_1(2),'y =',x_81_1(2),'x =','The LK composition in Upper zone is')
disp('respectively',y_81_1(3),'y =',x_81_1(3),'x =','The HK composition in Upper zone is')
