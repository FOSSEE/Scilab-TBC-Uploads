clear;
clc;

// Illustration 11.11
// Page: 645

printf('Illustration 11.11 - Page: 645\n\n');

// Solution

//****Data****//
// For collection of Cu2+:
V = 37850;// [l/h]
c1 = 20;// [meq Cu2+/l]
c2 = 0.01*c1;// [meq Cu2+/l]
Mass_rate = 2;// [meq Cu2+/g resin h (meq Cu2+/l)]
exchanged = V*(c1-c2);// [meq/h]
X2 = 0.30;// [meq Cu2+/g]
//************///

// The point(c2,X2) is plotted in Fig. 11.48(a), Pg 645:
// For the minimum resin/solution ratio and an infinitely tall tower, the operating line pass though point P.
X = 4.9;// [meq Cu2+/g]
MinRate = exchanged/(X-X2);// [g/h]
Rate = 1.2*MinRate;// [g/h]
// Copper balance:
X1 = (exchanged/Rate)+X2;// [meq Cu2+/g resin]
// The point (c1,x1) is ploted in Fig. 11.48(a) and operating line drawn can be straight line at this low conc.
// Adapting Eqn. 11.48 and rearranging:
// S*Z*Density_s = (V/Mass_rate)*integrate(1/(c-c_star),c,c1,c2)
// Mass_rate = KL_prime*ap/Density_s
// From the equilibrium curve:
// Data = [c c_star]
Data = [20 2.4;16 1.9;12 0.5;8 0.25;4 0.10;2 0.05;1 .02;0.2 0];
Val = zeros(8);
for i = 1:8
    Val(i) = 1/(Data(i,1)-Data(i,2));
end
scf(39);
plot(Data(:,1),Val);
xgrid();
xlabel("c");
ylabel("1 / (c-c*)");
title("Graphical Integration");
// From Graphical Integration:
Area = 5.72;
// holdup = S*Z*Density_s
holdup = V*Area/(Mass_rate);
printf("Resin Holdup: %f g\n",holdup);

// Regeneration of resin:
// For 70% utilisation of 2N acid, feed must contain:
V = exchanged;
F = V/(0.70*2000);// [l/h]
c1 = 0;// [meq Cu2+/l]
c2 = V/F;// [meq Cu2+/l]
X1 = 0.30;// [meq Cu2+/g resin]
X2 = 4.12;// [meq cu2+/g resin]
// The points (c1,X1) and (c2,X2) are plotted on Fig 11.48(b), Pg 645
c1_star = 120;// [meq Cu2+/l]
c2_star = 1700;// [meq Cu2+/l]
logmean = ((c1_star-c1)-(c2_star-c2))/log((c1_star-c1)/(c2_star-c2));
Mass_rate = 0.018;// [meq Cu2+/g resin h (meq Cu2+/l)]
// Substituting in equation:
deff('[y] = f79(holdup)','y = (V*(c2-c1))-(Mass_rate*holdup*logmean)');
holdup = fsolve(7,f79);
printf("Resin Holdup in the regeneration Tower is %e g\n",holdup);