clear;
clc;

// Illustration 9.4
// Page: 520

printf('Illustration 9.4 -  Page: 520\n\n');

// solution
//*****Data*****//

Pexp = [0.276;1.138;2.413;3.758;5.240;6.274;6.688;]; // [MPa]
V = [45.5;91.5;113;121;125;126;126;]; // [cubic cm of CH4/gram carbon]
Ma = 16; // [gram/mole]
Vstp = 22.4; // [L/mole]
q = V*Ma/Vstp; // [mg/g]

// Linearize data for Langmuir isotherm
y = Pexp/q;
y = [0.0030667;0.01264;0.02681;0.0417556;0.0582;0.06971;0.07431;];
W = [Pexp,y];
y = 0:0.001:0.01
scf(1);
plot(W(:,1),W(:,2));
xgrid();
xlabel("Pexp, MPa");
ylabel("y, MPa.mg/g"); 

// Now qm = 1/(slope of Pexp v/s y curve)
// From graph of Pexp v/s y, the slope is 
s = 0.01022;
// And intercept 
i = 5.4865*10^-3;
qm = 1/s; // [mg/g]
K = 1/(qm*i); // [1/MPa]
// Therefore
// qlp = K*qm*p/(1+Kp)
printf("Data for Langmuir isotherm are K = %f MPa^-1 and qm = %f mg/g\n\n",K,qm);

// Linearize data for Freundlich isotherm
// y1 = log(q/(mg/g)) , x1 = log(Pexp/MPa)
y1 = log(q);
x1 = log(Pexp);

X = [x1,y1];
x1 = -2:0.571:1;
y1 = 3:0.285:5; 
scf(2);
plot(X(:,1),X(:,2));
xgrid();
xlabel("log(Pexp/(Mpa))");
ylabel("log(q/(mg/g))");

// From graph of log(q) v/s log(Pexp)
// slope = 0.31
s = 0.31;
// and intercept is
i = 4;
// Therefore n = 1/slope
n = 1/s;
k = exp(i); // [(mg CH4/g of carbon.MPa^(-1/n)]
printf("Data for Freundlich isotherm are n = %f and k = %f\n\n",n,k);

// Therefore
// qFp = k*(p/1 Mpa)^(1/n)
printf('Figure 9.6(b) shows a q-p plot of the experimental data and the corresponding predictions of the Langmuir and Freundlich isotherms. It is evident from the plot that in this case, the Langmuir isotherm fits the data significantly better than the Freundlich isotherm.')