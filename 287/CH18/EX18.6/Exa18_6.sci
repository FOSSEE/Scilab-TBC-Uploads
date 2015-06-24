//Determine ABS/BH switch calling rate and CCS for a switch

RL = 12000;
n = 80000;
BL = 64000;
HL = 4000;
CRr = 2;
CRb = 3;
CRh = 10;
HTr = 140;
HTb = 160;
HTh = 200;

RLp = RL/n;
BLp = BL/n;
HLp = HL/n;
CCSrl = CRr * (HTr/100);
CCSbl = CRb * (HTb/100);
CCShl = CRh * (HTh/100);
SCR = (CRr*RLp) + (CRb*BLp) + (CRh*HLp) ;
Sccs = (CCSrl*RLp) + (CCSbl*BLp) + (CCShl*HLp) ;

Aht = (Sccs/SCR)*100;
ABSc = SCR*n;
ABSu = (Sccs*n)/36;

Dcc = 1.5*ABSc;
De = 1.5*ABSu;

disp(Dcc, 'Design call capacity based on HD')
disp(De, 'Design erlangs based on HD')