clc; funcprot(0); //Example 13.2

//Initializing the variables
R = 287;
T = 28+273;
gma = 1.4;
P = 1.02*10^5;
rhoHg = 13.6*10^3;
g = 9.81;

//Calculations
//Case(a)
U0 = 50;
c = sqrt(gma*R*T);
Ma = U0/c;
rho = P/(R*T);
DelP = 0.5*rho*U0^2; //Pt-P
ha = DelP/(rhoHg*g);

//Case(b)
U0 = 250;
Ma = U0/c;
Pt = P*(1+(gma-1)*Ma^2/2)^(gma/(gma-1));  
DelP = Pt-P
hb = DelP/(rhoHg*g);

//Case (c)
U0 = 420;
Ma1 =U0/c;
P2 = P*((2*gma/(gma+1))*Ma1^2 - ((gma-1)/(gma+1)));
N = Ma1^2 +2/(gma-1); // Numerator
D = 2*gma*Ma1^2/(gma-1)-1;
Ma2 = sqrt(N/D);
Pt2 = P2*(1+(gma-1)*Ma2^2/2)^(gma/(gma-1));
hc = (Pt2-P2)/(rhoHg*g) ;  

disp(hc*1000,"Difference in height of mercury column in case (c) in mm :",hb*1000,"Difference in height of mercury column in case (b) in mm :",ha*1000,"Difference in height of mercury column in case (a) in mm :");