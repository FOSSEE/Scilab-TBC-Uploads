//clc()
F = 1000;//kg/h
xfwater = 0.7;
xpwater = 0.2;
xrwater = 0.20;
xswater = 0.5;
y1 = 0.0025;
y2 = 0.05;
//R - recycle, S - stream entering granulator, P - Product, G1 - air entering the drier, G2 - air leaving the drier,
//takin overall, moisture free balance, F * xf = P * xp
P = F * ( 1 - xfwater )/(1 - xpwater );
// taking material balance at point where recycle strea joins the feed,
// F = R + S
//water balance, F*xfwater = R*xrwater + S*xswater,solving this we get,
R = (-F*xfwater +F*xswater)/(xrwater - xswater);
S = F + R;
mleaving = P + R;//solid leaving the drier
//dry air entering will there be in air leaving, therefore
//G1 * ( 1 - y1 ) = G2 * ( 1 - y2 )
// water balance over the drier gives, S*xswater+G1*y1=G2*y2+(P+R)*xpwater
//from above 2 equations , we get
G1 = ((mleaving*xpwater - S*xswater)/(y1 - y2*(1-y1)/(1-y2)));
disp("kg/h",R,"(a)Amount of solid recycled = ")
mdryair = G1 * (1 - y1);
disp("kg/h",mdryair,"(b)circulation rate of air in the drier on dry basis = ")