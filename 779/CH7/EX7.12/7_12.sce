T1 = 300; T2 = 330; T3 = 270;
P1 = 4; P2 =1 ; P3 =1 ;
cp = 1.0005; R = 0.287;
S21 = cp*log(T2/T1)-R*log(P2/P1); // S21 = S2-S1
S31 = cp*log(T3/T1)-R*log(P3/P1); // S31 = S3-S1
Sgen = 1*S21 + 1*S31;
disp("kW/K",Sgen,"The entropy generated during the process is")
disp("As the entropy generated is positive so such device is possible")