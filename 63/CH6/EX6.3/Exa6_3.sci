//Determine maximum modulation index

R1 = 110;
R2 = 220;
R3 = 470;
R4 = 1000;

Rc = R1 + R2;
Zm = ( (R2*R3*R4)/((R2*R3) + (R3*R4) + (R4*R2)) + 110);

Mmax = Zm/Rc;
Mmax1 = Mmax*100;

disp(Mmax1, 'Maximum modulation index (in %)')
