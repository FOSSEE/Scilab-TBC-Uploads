//clear//
clear;
clc;

//Example 20.2
//Given
F = 1000; //[kg]
solv_O = 10; //[kg]
solv_B = 655; //[kg]
w_out = 60; //[kg]
//Solution
//Let solution retained is SR, from Table 20.1
SR = [0.5,0.505,0.515,0.530,0.550,0.571,0.595,0.620]';
xb = 0:0.1:0.7;
//Let x and y be the mass fraction of oil in the underflow and 
//overflow solutions.

//At the solvent inlet,
Vb = solv_O + solv_B; //[kg solution/h]
yb = solv_O/Vb; 
err = 1;
i = 1;
sr = SR(2);
xb1 = 0.0;
while(err>0.001)
  Lb = sr*F;
  xbnew = w_out/Lb;
  err = abs(xb1-xbnew);
  xb1 = xbnew;
  sr = SR(i)+(xb1-xb(i))/(xb(i+1)-xb(i))*(SR(i+1)-SR(i));
  i =i+1;
end
Lb = sr*F;
//Benzene in the underflow at Lb is
Underlow_B = Lb-w_out; //[kg solutions/h]

// At the solid inle
La = 400+25; //[kg solutions/h]
xa = 400/La;
w_in =  10+400; //[kg/h]
Extract_O = w_in - w_out; //[kg/h]
Extract_B = 655+25-447; //[kg/h]
Va = Extract_O+Extract_B; //[kg/h]
ya = Extract_O/Va; 

//The answers to parts (a) to (d) are
//(a)
disp(ya,'The concentration of strong solution is');
//(b)
disp(xb1,'The concentration of the soultion adhering to the extracted solids is');
//(c)
disp('kg/h',Lb,'The mass of solution leaving with the extracted meal is');
//(d)
disp('kg/h',Va,'The mass of extract is');

//(e)
//To determine an intermediate point on the operating line, choosing,
xn = 0.5;
//Soulion retained
Ln = 0.571*F; //[kg/h]
//By overall balance, Eq.(20.1)
V_n_1 = Va+Ln-La; //[kg/h]
//By oil balance
y_n_1 = (Ln*xn+Va*ya-La*xa)/V_n_1;
y =0:0.1:1;
x = y; 
plot(x,y,[xb1,xn,xa],[yb,y_n_1,ya])
xgrid()
xlabel('x')
ylabel('y')
title('Figure 20.4')
legend('y=x','operating line')
//Using Figure 20.4, number of ideal stages required are
N = 4;
disp(N,'Number of stages required are')
