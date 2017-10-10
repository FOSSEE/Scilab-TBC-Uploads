//CHAPTER 6- MAGNETIC CIRCUITS
//Example 2

disp("CHAPTER 6");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
dr=25/100;                       //diameter of steel ring in m
ds=3/100;                        //diameter of circular section in m
lg=1.5/1000;                     //length of air-gap in m
N=700;                           //number of turns
mu0=4*%pi*10^(-7);               //absolute permeability in Henry/m
I=2;                             //in Amperes

//SOLUTION

//solution (i)
mmf=N*I;
disp(sprintf("(i) MMF is %d AT", mmf));  

//solution (ii)
netMMF=(mmf-(0.35*mmf));         //mmf taken by iron path is 35% of total mmf
b=(mu0*netMMF)/lg;               //phi=b*area, r=lg/(mu0*area) & mmf=phi*r => mmf=(b*lg)/mu0 => b=(mmf*mu0)/lg 
disp(sprintf("(ii) The flux density of the air gap is %E Wb/m^2", b));

//solution (iii)
ar=%pi*((ds/2)^2);               //area of cross-section of circular section
phi=ar*b;
disp(sprintf("(iii) The magnetic flux is %E Wb",phi));

//solution (iv)
rt=mmf/phi;
disp(sprintf("(iv) The total reluctance is %E AT/wb",rt));

//solution (v)
rg=lg/(mu0*ar);                  //reluctance of air gap
rs=rt-rg;                        //reluctance of steel
lr=%pi*dr;                       //circumference of ring
mur=lr/(mu0*rs*ar);
disp(sprintf("(v) The relative permeability of the steel ring is %E",mur));

//solution (vi)
disp(sprintf("(vi) Reluctance of steel is %E AT/Wb",rs));

//END 





