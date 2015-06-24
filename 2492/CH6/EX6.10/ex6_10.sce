// Exa 6.10
format('v',6)
clc;
clear;
close;
// Given data
h_fe = 50;
h_ie = 1.2;// in k ohm
h_ie  = h_ie * 10^3;// in ohm
R_C = 1;// in k ohm
R_C = R_C * 10^3;// in ohm
R_E = 200;// in ohm
R_B = 2;// in k ohm
R_B = R_B * 10^3;// in ohm
Av = (-h_fe*R_C)/h_ie;
disp(Av,"The voltage gain (Av) is");
Ri = (h_ie*R_B)/(h_ie+R_B);// in ohm
disp(Ri,"The input resistance (Ri) in ohm is");
// vi= vs (on neglecting Rs), hence i_E= i_B+h_fe*i_B = (1+h_fe)*i_B                (i)
// vo= -i_C*R_C = -h_fe*i_B*R_C         (As i_C= h_fe*i_B)                                  (ii)
// From eq (i) : vi= i_B*h_ie+i_E*R_E= i_B*(h_ie+(1+h_fe)*R_E)                      (iii)
//  i_L= i_B                                                                                                                        (iv)  
// Avf = (h_fe*i_B*R_C)/(i_B*(h_ie+(1+h_fe)*R_E));
Avf = (-h_fe*R_C)/( h_ie+(1+h_fe)*R_E );
disp(Avf,"The voltage gain (Avf) is");
Rif = (R_B*(h_ie + ((1+h_fe)*R_E)))/(R_B+(h_ie + ((1+h_fe)*R_E)));// in ohm
Rif= Rif*10^-3;// in k ohm
disp(Rif,"The input resistance (Rif) in k ohm is");
