P = 12; // Pressure in K
t = 0.375 ; // thickness of wall in inch
theta = 40 ; // angle in degree
d_pin = 0.75 ; // diameter of pin in inch
t_G = 0.625 ; // thickness of gusset in inch
t_B = 0.375 ; //thickness of base plate in inch
d_b = 0.50 ; // diameter of bolt in inch
//Part (a)
s_b1 = P/(2*t*d_pin); // bearing stress
disp("ksi",s_b1,"Bearing stress between strut and pin")
//Part (b)
t_pin = (4*P)/(2*%pi*(d_pin^2));  // average shear stress in the 
disp("ksi",t_pin,"Shear stress in pin is ")
// Part (c)
s_b2 = P/(2*t_G*d_pin); // bearing stress between pin and gusset
disp("ksi",s_b2," Bearing stress between pin and gussets is")
// Part (d)
s_b3 = (P*cosd(40))/(4*t_B*d_b); // bearing stress between anchor bolt and base plate
disp("ksi",s_b3,"Bearing stress between anchor bolts and base plate")
// Part (e)
t_bolt = (4*cosd(40)*P)/(4*%pi*(d_b^2)); // shear stress in anchor bolt
disp("ksi",t_bolt,"Shear stress in anchor bolts is")
