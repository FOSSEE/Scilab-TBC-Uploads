clc
// Engine lathe
t = 12 // time/piece in min.
l = 7 // overhead cost/hr
o = 4 // direct labour cost/hr
s = 2 // set up time in hour
sr = 8 // set up rate per 
// turret lathe
T = 5 // time/piece in min.
L = 5 // overhead cost/hr
O = 8 // direct labour cost/hr
S = 8 // set up time in hour
SR = 8 // set up rate per 
q = 60*(S*SR-s*sr)/(t*(l+o)-T*(L+O)) // break even point
q = round(q)
printf("\n Break even point = %d pieces" , q)
