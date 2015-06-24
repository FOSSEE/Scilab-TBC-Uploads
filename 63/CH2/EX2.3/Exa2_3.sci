//Determine Input-noise Resistance

R1 = 600 + 1600;
R2 = (27e+3*81e+3) / (27e+3+81e+3) + 10e+3;
R3 = 1e+6;

A1 = 10;
A2 = 25;

Req = R1 + R2/A1^2 + R3/(A1^2 * A2^2);

disp(Req, 'Input-noise Resistance is (in ohms)')