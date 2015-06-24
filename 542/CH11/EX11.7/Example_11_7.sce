clear;
clc;
printf('Example 11.7'); //Example 11.7
// Find Number of theoretical plates needed and the position of entry for the feed

F = 100;                //Feed [kmol]

function[f]=Feed(x)
    f(1)=x(1)+x(2)-100;                    //Overall mass Balance
    f(2)=0.9*x(1)+.1*x(2)-(100*.4);        //A balance on MVC,benzene
    funcprot(0)
endfunction
x = [50 50];
product = fsolve(x,Feed);

//Using notation of figure 11.13
Ln = 3*product(1);
Vn = Ln + product(1);

//Reflux to the plate
Lm = Ln + F;
Vm = Lm - product(2);

//Equilibrium Composition
xt = .79;    yt = .9;
//From Top eqm line
yt1 = (Ln/Vn)*xt + (product(1)/Vn);
xt1=.644;        //Thus from Eqm curve for yt1
//From Top eqm line
yt2 = (Ln/Vn)*xt1 + (product(1)/Vn);
xt2=.492;        //Thus from Eqm curve for yt2
//From Top eqm line
yt3 = (Ln/Vn)*xt2 + (product(1)/Vn);
xt3=.382;        //Thus from Eqm curve for yt3
//From II Eqm Line
yt4 = (Lm/Vm)*xt3 - (product(2)/Vm)*.1;
xt4=.2982;        //Thus from Eqm curve for yt4
//From II Eqm Line
yt5 = (Lm/Vm)*xt4 - (product(2)/Vm)*.1;
xt5=.208;        //Thus from Eqm curve for yt5
//From II Eqm Line
yt6 = (Lm/Vm)*xt5 - (product(2)/Vm)*.1;
xt6=.120;        //Thus from Eqm curve for yt6
//From II Eqm Line
yt7 = (Lm/Vm)*xt6 - (product(2)/Vm)*.1;
xt7=.048;        //Thus from Eqm curve for yt7

//Equilibrium Data
y=[0 yt7 yt6 yt5 yt4 yt3 yt2 yt1 yt];
x=[0 xt7 xt6 xt5 xt4 xt3 xt2 xt1 xt];
//Top Equilibrium Line equation 11.35
x1 = linspace(0,.79,100);
y1 = (Ln/Vn)*x1 + (product(1)/Vn);
//Equilibrium Line equation 11.37
x2 = linspace(0.048,.44,100);
y2 = (Lm/Vm)*x2 - (product(2)/Vm)*.1;
clf();
plot(x,y,x1,y1,x2,y2);
xtitle("Lewis-Sorel Method", "Mole fraction of C6H6 in Liquid (x)", "Mole Fraction C6H6 in Vapor (y)");
legend ("Equilirium Plot", "Top Eqm Line", "Bottom Eqm Line");
printf("\n\n As the least point on equilibrium Line xt-7 correspond to reboiler, and there will be seven plates");


//END