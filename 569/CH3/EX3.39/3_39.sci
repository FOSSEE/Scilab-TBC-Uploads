//to find uncertainity in combined resistance in both series and in parrallel

clc;
R1=100;
R2=50;
wR1=.1;
wR2=0.03;
disp('series conn');
R=R1+R2;disp(R,'resistance(ohm)');
dR1=1;
dR2=1;
wR=sqrt((dR1*wR1)^2+(dR2*wR2)^2);disp(wR,'uncertainity in resistance(ohm)');

disp('parrallel conn');
R=R1*R2*(R1+R2)^-1;disp(R,'resistance(ohm)');
dR1=(R2/(R1+R2))-((R1*R2)/(R1+R2)^2);
dR2=(R1/(R1+R2))-((R1*R2)/(R1+R2)^2);
wR=sqrt((dR1*wR1)^2+(dR2*wR2)^2);disp(wR,'uncertainity in resistance(ohm)');

