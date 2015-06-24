//clear//
clear;
clc;

//Example 26.1
//Given
alpha = 5;
per = 0.2; //[scf/ft^2-h-atm]
Pf = 150; //[lbf/in.^2]
Pp = 15; //[lbf/in.^2]

//Solution
//(a)
R = Pp/Pf;
//At the feed inlet 
xin = 0.209;
//Using Eq.(26.17)
A = alpha-1;
B = 1-alpha-1/R-xin*(alpha-1)/R;
C = alpha*xin/R;
yi_in = (-B-sqrt(B^2-4*A*C))/(2*A);
//At the discharge end
xd = 0.05;
//Using Eq.(26.17) 
A = alpha-1;
B = 1-alpha-1/R-xd*(alpha-1)/R;
C = alpha*xd/R;
yi_d = (-B-sqrt(B^2-4*A*C))/(2*A);

//For an approximate solution, these terminal compositions are
//averaged to give 
ybar = (yi_in+yi_d)/2;
//From an overall material balance
//Basis 
Lin = 100; //[scfh]
V = (Lin*xin-Lin*xd)/(ybar-xd);
//disp(ybar,'and permeate composition is','percent',V/Lin*100,'The permeate in the feed is');


//For more accurate calculation
j = 2;
yi_in(1) = 0.5148;
x(1) = 0.209;
y(1)= 0.5148;
L = Lin;
deltaV = [];
deltaVybar = [];
ybar = [];
for i = 0.2:-0.01:xd
x(j) = i;
A = alpha-1;
B = 1-alpha-1/R-x(j)*(alpha-1)/R;
C = alpha*x(j)/R;
yi_in(j) = (-B-sqrt(B^2-4*A*C))/(2*A);
ybar(j-1) = (yi_in(j-1)+yi_in(j))/2;
deltaV(j) = L*(x(j-1)-x(j))/(ybar(j-1)-x(j));
V = sum(deltaV);
L = Lin - V;
deltaVybar(j) = deltaV(j-1)*ybar(j-1);
deltaVybarsum = sum(deltaVybar);
y(j-1) = deltaVybarsum/V;
j = j+1;
end
disp(y($),'and permeate composition is','percent',V/Lin*100,'The permeate recovered');;


//(b)
//The membrane area obtained from the flux of A using
//Eq.(26.29) and (26.13)
//for the first increment x = 0.209 to x = 0.2
deltaybar1 = 1.4856; //[scfh], for Lin = 100 scfh
//At x = 0.209
A1 = 0.209-0.1*0.5148;
//At x = 0.2
A2 = 0.2-0.1*(0.50);
Aavg = (A1+A2)/2
QAP1 = 0.2*10; //scfh/ft^3
//for specified flow of 300  scfh
deltaA = 1/2*1.486/Aavg*180; //[ft^2]
//The calculation continued with increments of 0.01
A = 211/2.0*180; //[ft^2]
disp('ft^2',A,'The membrane area needed is') 
