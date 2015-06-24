Qr = 500; // Heat release in kW
Tr = 2000;
T0 = 300;
// Part (a)
Qa = 480; Ta = 1000;
n1a = (Qa/Qr);
n2a = n1a*(1-(T0/Ta))/(1-(T0/Tr));
disp("PART (A)")
disp("%",n1a*100,"The first law efficiency is")
disp("%",n2a*100,"The Second law efficiency is")
// Part (b)
Qb = 450; Tb = 500;
n1b = (Qb/Qr);
n2b = n1b*(1-(T0/Tb))/(1-(T0/Tr));
disp("PART (B)")
disp("%",n1b*100,"The first law efficiency is")
disp("%",n2b*100,"The Second law efficiency is")
// Part (c)
Qc = 300; Tc = 320;
n1c = (Qc/Qr);
n2c = n1c*(1-(T0/Tc))/(1-(T0/Tr));
disp("PART (C)")
disp("%",n1c*100,"The first law efficiency is")
disp("%",n2c*100,"The Second law efficiency is")
// Part (d)
Qd = 450; 
n1d = (Qd/Qr);
n2a_= n1d*(1-(T0/Ta))/(1-(T0/Tr));
n2b_= n1d*(1-(T0/Tb))/(1-(T0/Tr));
n2c_= n1d*(1-(T0/Tc))/(1-(T0/Tr));
disp("Part (D)")
disp("%",n1d*100,"The first law efficiency is")
disp("%",n2a_*100,"The Second law efficiency of part (a) is")
disp("%",n2b_*100,"The Second law efficiency of part (b) is")
disp("%",n2c_*100,"The Second law efficiency of part (c) is")