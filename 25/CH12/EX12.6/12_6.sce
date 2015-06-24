// example:-12.6,page no.-704.
// program to calculate the power density of 20 m from the anteena.
G=10^4;Pin=5;R=20;
S=(Pin*G)/(4*%pi*(R^2))*0.1;
disp(S,'the power density in the main beam of the anteena at a distance of 20 m in mw/cm^2 = ')