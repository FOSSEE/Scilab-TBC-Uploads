clear;
clc;

// Illustration 6.14
// Page: 387
printf('Illustration 6.14 -  Page: 387\n\n');

// solution
//*****Data*****//
// a-acetone  b-methanol  c-water
yna = 0.2971; yn1a = 0.17; ynIa = 0.3521; mnIa = 2.759; xna = 0.1459;
ynb = 0.4631; yn1b = 0.429; ynIb = 0.4677; mnIb = 1.225; xnb = 0.3865;
ync = 0.2398; yn1c = 0.4010; ynIc = 0.1802; mnIc = 0.3673; xnc = 0.4676;

Fabv = 4.927; // [mol/square m.s]
Facv = 6.066; // [mol/square m.s]
Fbcv = 7.048; // [mol/square m.s]
aI = 50; // [square m]
Vn1 = 188; // [mol/s]
Vn = 194.8; // [mol/s]
//*****//
printf('Illustration 6.14(a) -  Page: 387\n\n');
// Solution(a)

ya = (yna+ynIa)/2;
yb = (ynb+ynIb)/2;
yc = (ync+ynIc)/2;

Rav = ya/Facv+yb/Fabv+yc/Facv;
Rbv = yb/Fbcv+ya/Fabv+yc/Fbcv;

Rabv = -ya*(1/Fabv-1/Facv);
Rbav = -yb*(1/Fabv-1/Fbcv);
// Thus in matrix form
Rv = [Rav Rabv;Rbav Rbv];
kv = inv(Rv); // [inverse of Rv]
// From equ 6.99
b = [yna-ynIa;ynb-ynIb];
J = kv*b;

// From equ 6.98
Jc = -sum(J); // [mol/square m.s]

printf("The molar diffusional rates of acetone, methanol and water are %f mol/square m.s, %f mol/square m.s and %f mol/square m.s respectively.\n\n",J(1,1),J(2,1),Jc);

printf('Illustration 6.14(b) -  Page: 388\n\n');
// Solution(b)
Ntv = Vn1-Vn; // [mol/s]

// From equation 6.94
Nta = aI*J(1,1)+ya*Ntv;
Ntb = aI*J(2,1)+yb*Ntv;
Ntc = aI*Jc+yc*Ntv;
printf("The mass transfer rates of acetone, methanol and water are %f mol/s ,%f mol/s and %f mol/s respectively.\n\n",Nta,Ntb,Ntc);

printf('Illustration 6.14(c) -  Page: 389\n\n');
// Solution(c)

// Approximate values of Murphree vapor tray efficiency are obtained from   // equation 6.105

EMG_a = (yna-yn1a)/(mnIa*xna-yn1a);
EMG_b = (ynb-yn1b)/(mnIb*xnb-yn1b);
EMG_c = (ync-yn1c)/(mnIc*xnc-yn1c);

printf("The Murphree vapor tray efficiencies for acetone, methanol and water are %f, %f and %f respectively.\n\n",EMG_a,EMG_b,EMG_c);