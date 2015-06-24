//Problem 2.09: 

//initializing the variables:
D = 5/12; // in ft
p = 50; // in lb/ft3
v = 10; // in fps
u = 0.65*6.720E-4 ; //in lb/ft.sec

//calculation:
Re = D*p*v/u
if (Re>2100) then
    s = 'turbulent';
else
    s = 'laminar';
end
printf("\n\nResult\n\n")
printf("\n Reynolds number for a fluid flowing is %.2E and the flow is %s\n",Re, s)
