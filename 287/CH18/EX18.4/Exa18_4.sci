////Determine the traffic intensity in Erlangs and CCS

n = 10;
t = 1.5;
Cd = 60+74+80+90+92+70+96+48+64+126;

CAR = n/t;
Hbar = Cd/10; 

I = (CAR*Hbar)/3600;

disp(I, 'Traiffic Intensity (in Erlangs)');
disp(I*36, 'Traiffic Intensity (in CCS)');