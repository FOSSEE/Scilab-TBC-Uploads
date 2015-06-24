clc;
//page no 569
//prob no. 16.3
//Two antennas with gain 5.3dBi & 4.5dBd
//Converting unit dBd in dBi for comparison
G1_dBi=5.3;G2_dBd=4.5;
G2_dBi=2.14+G2_dBd;
if G2_dBi > G1_dBi then
    disp('Second antenna with gain=4.5dBd has higher gain');
else
    disp('First antenna with gain=5.3dBi has higher gain ');
end;