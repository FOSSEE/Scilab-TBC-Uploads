Ts=10^(-6);..//pulse width
lamda=0.1;..//transmitter's duty cycle
DH=3;..//horizontal dimension
DV=0.5;..//vertical dimension
DelRrmin=lamda/(2*Ts);..//resolution in range rate
DelRamin=lamda/(Ts^2);..//resolution in acceleration range
DelFIH=(lamda/DH)*(180/%pi);..//azimuth beamwidth
DelFIV=(lamda/DV)*(180/%pi);..//elevation beamwidth
disp("m/s",DelRrmin,"The nominal resolution in range rate is");
disp("m/s^2",DelRamin,"The nominal resolution in acceleration range is");
disp("Degree",DelFIH,"The azimuth beamwidth of the antenna is");
disp("Degree",DelFIV,"The elevation beamwidth of the antenna is");