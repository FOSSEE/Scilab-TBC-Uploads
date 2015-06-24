//Determine total frequency variation when the transconductance of the FET is varied from zero to maximum by the modulating voltage

gm = 9e-3;
fn = 8*5e+7;
f = 50e+6;
C = 50e-12;

Cx = gm/(2*%pi*fn);

F = sqrt(1 + (Cx/C));

del = (0.0352*f)/2.0352;
totaldel = 2*del;

disp(totaldel, 'Total frequency variation is (in Hz)')