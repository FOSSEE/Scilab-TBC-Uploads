P1 = 1.013; P4 = 80;
P2 = sqrt(P1*P4);
V_dot = 4/60; // in m3/s
n = 1.25;
n_mech = 0.75;
W_dot = ((2*n)/(n-1))*((P1*100*V_dot)/n_mech)*((P2/P1)^((n-1)/n)-1);
N = 250;
L = (3*60)/(2*N); // Stroke length of piston in m
Vlp = 4/N;
n_vol = 0.8;
Dlp = sqrt((Vlp*4)/(n_vol*L*%pi));
Dhp = Dlp*sqrt(P1/P2);
disp("kW",W_dot,"Minimum power required is")
disp("cm",L*100,"Stroke of the compressor is")
disp("cm",Dhp*100,"Bore of high pressure compressure is")
disp("cm",Dlp*100,"Bore of lo pressure compressure is")
