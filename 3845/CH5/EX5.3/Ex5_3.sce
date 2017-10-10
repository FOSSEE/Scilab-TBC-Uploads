//Example 5.3
F=3.0*10^6;//Maximum tension (N)
L_0=3020;//Original length considered (m)
Y=210*10^9;//Young's modulus (N/m^2)
d=5.6*10^-2;//Diameter of cable (m)
A=%pi*(d^2)/4;//Cross-sectional area of cable (m^2)
delta_L=F*L_0/(Y*A);//Change in length (m)
printf('Change in length = %0.2f m',delta_L)
//An error of more than 2% with the answer in textbook for delta_L, but the answer can be rounded off to 18m 
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
