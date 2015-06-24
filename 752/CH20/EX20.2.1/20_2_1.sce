clc;
// page no 753
// prob no 20.2.1
// An optic fiber is made of glass with following details
n1=1.55;//RI of glass
n2=1.51;//RI of clad
// NA of the fibe is given as
NA=n1*sqrt(2*(n1-n2)/n1);
disp(NA,'The numerical aperture is');
// Acceptance angle is given as
acc_angle=asind(NA);
disp(acc_angle,'The acceptance angle is');