clear;
clc;
printf("\n Example 12.6");
printf("\n Number of theoretical plates = %d",(30*0.3));

//At the bottom of the tower:
//Flowrate of steam = Gm (kmol/m^22s)
//Mole ratio of pentane in steam = Y1, and
//Mole ratio of pentane in oil = X1
X1 = 0.001;

//At the top of the tower:
//exit steam composition = Y2
//inlet oil composition = X2
X2 = 0.06;
//flowrate of oil = Lm (kmol/m^2.sec)

//The minimum steam consumption occurs when the exit steam stream is in equilibrium with the inlet oil, that is when:
//The equilibrium relation for the system may be taken as Ye = 3.0X, where Ye and X are expressed in mole ratios of pentane in the gas and liquid phases respectively.
Ye2 = X2*3;
//Lmin(X2 − X1) = Gmin(Y2 − Y1)
//If Y1 = 0, that is the inlet steam is pentane-free, then:
ratio_min = (X2 - X1)/Ye2;


//The operating line may be fixed by trial and error as it passes through the point (0.001, 0), and 9 theoretical plates are required for the separation. Thus it is a matter of selecting the operating line which, with 9 steps, will give X2 = 0.001 when X1 = 0.06. This is tedious but possible, and the problem may be better solved analytically since the equilibrium line is straight.

//let x = 1/A
//for a stripping operation
LHS = (X2-X1)/(X2);
printf("\n LHS = %f",LHS);
x = poly([0],'x');
x1 = roots((x^10-x)-LHS*(x^(10)-1));
printf("\n 1/A = %.2f",x1(9));
//A = Lm/mGm
printf("\n Gm/Lm = %.3f",x1(9)/3);
printf("\n Actual/minimum Gm/Lm = %.2f",0.457/0.328);

//If (actual Gm/Lm)/(min Gm/Lm) = 2,
printf("\n Actual Gm/Lm = %.3f",.328*2);
x2 = 3*(0.656);
printf("\n 1/A = mGm/Lm = %.3f",3*0.656);

//y = (1.968)^(N+1)
y = poly([0],'y');
y1 = roots(0.983*(y-1)-(y-1.968));
N = log(y1)/log(1.968)-1;
printf("\n The actual number of plates are : %.1f",ceil(N/0.3));













