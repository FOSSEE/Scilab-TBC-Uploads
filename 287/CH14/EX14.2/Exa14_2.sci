//Determine the following parameters.

t = 120;
d = 24;
BH = 5;
BW = 5000;
RFw = 200;
S = 60000;
A = 500;

E = t/(d*BH*60);
Nrf = BW/RFw;
Srf = Nrf/(4*3);
TCH = Srf*8;
Tbts = 9.82*3;  //Using Erlang B table
Sbts = (Tbts*1000)/TCH;
BTSn = S/Sbts;
R = sqrt(A/(BTSn*Srf));

disp(E, 'Erlangs per subscriber')
disp(TCH, 'Traffic Channels per sector')
disp(BTSn, 'No. of BTS in a zone')
disp(R, 'Avg. Hexagonal cell radius (in Km)')
