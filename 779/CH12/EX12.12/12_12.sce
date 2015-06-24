// From table and graph 
h1 = 2792.2;
h4 = 122.96;
hb = 254.88;
hc = 29.98;
ha = 355.98;
hd = hc;
h2 = 1949.27;
//
m = (h1-h4)/(hb-hc); // Amount of mercury circulating
Q1t = m*(ha-hd);
W1t = m*(ha-hb) + (h1-h2);
Nov = W1t/Q1t ;
disp("%",Nov*100,"Overall efficiency of the cycle")
S = 50000; // Stem flow rate through turbine in kg/h
wm = S*m;
disp("kg/h",wm,"Flow through the mercury turbine is")
Wt = W1t*S/3600;
disp("kW",Wt,"Useful work done in binary vapour cycle is")
nm = 0.85; // Internal efficiency of mercury turbine
ns = 0.87; // Internal efficiency of steam turbine
WTm = nm*(ha-hb);
hb_ = ha-WTm; // hb'
m_ = (h1-h4)/(hb_-hc); // m'
h1_ = 3037.3; // h'
Q1t = m_*(ha-hd)+(h1_-h1);
x2_ = (6.9160-0.4226)/(8.47-0.4226);
h2_ = 121+(0.806*2432.9);
WTst = ns*(h1_-h2_);
WTt = m_*(ha-hb_)+WTst;
Nov = WTt/Q1t;
disp("%",Nov*100,"Overall efficiency is") 
