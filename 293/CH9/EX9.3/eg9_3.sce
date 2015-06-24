//a
//transistor parameters 
 R2 = 0.625;
 hie = 1.67;
 Rb = 4.16;
 Rl = 2.4;
 Roe = 150;
 
 Cc = 25 * 10^-6;
 rBB = 0.29;
 rBE = 1.375;
 Cd = 6900 * 10^-12;
 Ct = 40 * 10^-12;
 gm = 0.032;
 
  Req = (Rl*Roe)/(Rl + Roe);
  hfe = 44;
  a = 1 + (R2/Req);
  b = 1 + (hie/Rb);
  Aim = -hfe/(a*b); // mid band frequency gain 
  disp("a")
  disp(Aim,"The mid band frequency gain of the first stage of the circuit is: ")
  
  //b
  Tl = 2*%pi*(Req + R2)*Cc*(10^3);
  Fl = 1/Tl; 
  
  Rp = (Req*R2)/(Req + R2);
  C = Cd + Ct*(1 + gm*Rp*10^3);
  d = Rb + hie ;
  e = rBE * (Rb + rBB)* 10^3 * C ; 
  Fh = d/(2*%pi*e);
  
  BW = Fh - Fl;
 disp("b")
 disp(BW, "The bandwidth of the first stage amplifier in Hz is :")
  
  