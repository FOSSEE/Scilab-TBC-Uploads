P1 = 108000; //Newton
P2 = 27000; //Newton
L = 2.2; //meter
A = 480; //mm^2

// Displacement due to load P1 acting alone

s = (P1/A) //stress in MPa
e = (s/70000) + (1/628.2)*((s/260)^10) //strain
D_b = e*L*1e3 //elongation in mm
disp("mm",D_b,"elongation when only P1 load acting is = ")

// Displacement due to load P2 acting alone

s_1 = (P2/A) //stress in MPa
e_1 = (s_1/70000) + (1/628.2)*((s_1/260)^10) //strain
D_b_1 = e_1*(L/2)*1e3 //elongation in mm (no elongation in lower half)
disp("mm",D_b_1,"elongation when only P2 load acting is = ")

// Displacement due to both load acting simontaneously

//upper half
s_2 = (P1/A) //stress in MPa
e_2 = (s_2/70000) + (1/628.2)*((s_2/260)^10) //strain
//lower half
s_3 = (P1+P2)/A //stress in MPa
e_3 = (s_3/70000) + (1/628.2)*((s_3/260)^10) //strain
D_b_2 = ( (e_2*L)/2 + (e_3*L)/2 ) * 1e3 // elongation in mm
disp("mm",D_b_2,"elongation when P1 and P2 both loads are acting is = ")