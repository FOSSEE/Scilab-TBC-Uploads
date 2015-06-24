clear;
clc;
printf('Example 11.8'); //Example 11.8
// Find Number of theoretical plates needed and the position of entry for the feed by mccabe thiele method

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

//Equilibrium Data
y=[0 .127 .252 .379 .498 .594 .708 .818 .9 1];
x=[0 .048 .12 .208 .298 .382 .492 .644 .79 1];
//Diagnol Line
y3 = [0 1];
x3 = [0 1];
//Top Equilibrium Line equation 11.35
x1 = linspace(0,.985,100);
y1 = (Ln/Vn)*x1 + (product(1)/Vn);
//Equilibrium Line equation 11.37
x2 = linspace(0.048,.44,100);
y2 = (Lm/Vm)*x2 - (product(2)/Vm)*.1;
clf();
//Setting initial point A x =  .985 at top eqm line
xm = [.985 .965 .965 .92 .92 .825 .825 .655 .655 .44 .44 .255 .255 .125 .125 .048];
ym = [.985 .985 .965 .965 .92 .92 .825 .825 .655 .655 .44 .44 .255 .255 .125 .125];
xp = [.985 .965 .92 .825 .655 .44 .255 .125 .048];
yp = [.985 .965 .92 .825 .655 .44 .255 .125 .048];
plot(x,y,x3,y3,x1,y1,x2,y2,xm,ym);
xtitle("Mccabe Thiele Method", "Mole fraction of C6H6 in Liwuid (x)", "Mole Fraction C6H6 in Vapor (y)");
legend ("Equilirium Plot", "Diagnol Line","Top Eqm Line", "Bottom Eqm Line",5);
xset('window',1);
for(i=2:8)
plot(xp(i),yp(i),"o-");
xtitle("Equilibrium plot","mole fraction C6H6 in liquid(x)","mole fractionC6H6 in vapour(y)");
end
printf("\n\n The Number of stages are then counted highlighted points that is number of plates required as 7");


//END