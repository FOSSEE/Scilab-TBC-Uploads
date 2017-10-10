clc
thetaH=17.3;..//beamwidth in E plane
thetaE=17.3;..//beamwidth in H plane
eta=0.5;..//antenna's efficiency
c=3*10^8;
f=4.5*10^9;
lambda=c/f;
A=(78*lambda/thetaH);..//aperture dimension in H plane
B=(54*lambda/thetaE);..//aperture dimension in E plane
G=10*log10(eta*4*%pi*A*B/lambda^2);
disp("m",A,"Aperture dimension in H plane");
disp("m",B,"Aperture dimension in E plane");
disp("dB",G,"Gain");