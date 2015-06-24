h1 = 3037.3; h2 = 561+(0.96*2163.8);
s2 = 1.6718+(0.96*5.3201);
s3s = s2;
x3s = (s3s-0.6493)/7.5009;
h3s = 191.83+(x3s*2392.8);
h23 = 0.8*(h2-h3s); // h2-h3
h3 = h2-h23;
h5 = 561.47; h4 = 191.83;
Qh = 3500; // in kJ/s
w = Qh/(h2-h5);
Wt = 1500;
ws = (Wt+w*(h2-h3))/(h1-h3); 
ws_ = 3600*ws ; // in kg/h
h6 = ((ws-w)*h4+w*h5)/ws;
h7 = h6;
n_boiler = 0.85;
CV = 44000; // in kJ/kg
wf = (1.1*ws_*(h1-h7))/(n_boiler*CV);
disp("kg/h",wf,"Fuel buring rate is")
