//Chapter 3
//Example 3.2
//singlephaseinductance
//Page 55
clear;clc;

//Given Values
r_x = 0.25e-2;//radius of circuit in m,composed of 3 wires a,b,c
r_y = 0.50e-2;//radius of return circuit in m,composed of 2 wires d,e
d_c = 9;//distance between the two circuits
d_w = 6;//distance between wires of same circuit

//To find GMD between sides X and Y
D_ad = d_c;D_be = D_ad;
D_ae = sqrt(d_w^2+d_c^2);
D_bd = D_ae;D_ce = D_ae;
D_cd = sqrt(d_c^2+(2*d_w)^2);
//GMD is given by
D_m = (D_ad * D_ae * D_bd * D_be * D_cd * D_ce)^(1/6);
printf("\n\n The GMD between the sides X and Y = %.3f m \n\n",D_m)

//To find GMR for the side X
D_aa = r_x * 0.7788;//multiplication by 0.7788 to adjust the radiuss 
                   //in order to account for internal flux
D_ab = d_w;D_ac = 2 * d_w;D_ba = d_w;D_bb = D_aa;D_bc = D_ab;
D_ca = D_ac;D_cb = D_ab;
D_cc = D_aa;

//GMR for side X
D_s_x = (D_aa * D_ab * D_ac * D_ba * D_bb * D_bc * D_ca * D_cb * D_cc)^(1/9);
printf("\n\n The GMR for side X = %.3f m \n\n",D_s_x)

//To find GMR for the side Y
D_dd = r_y * 0.7788;
D_de = d_w;D_ee = D_dd;D_ed = D_de;

//GMR for side Y
D_s_y = (D_dd * D_de * D_ee * D_ed)^(1/4);
printf("\n\n The GMR for side Y = %.3f m \n\n",D_s_y)

//Inductance
L_x = 2e-7 * log(D_m / D_s_x);
L_y = 2e-7 * log(D_m / D_s_y);
L = L_x + L_y;
printf("\n\n Inductance of side X = %.3fe-7 H/m \n\n ",L_x*10^7)
printf("\n\n Inductance of side Y = %.3fe-7 H/m \n\n",L_y*10^7)
printf("\n\n Inductance of Complete line = %.3fe-7 H/m\n\n",L*10^7)
printf("\t\t\t \t= %.2f mH/mi \n\n",L * 1609e3)