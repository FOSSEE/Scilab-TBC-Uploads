//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 14.1.2
clc;
clear ;
//given

lambda=1310;//operating wavelength in nm
Transport_line=36;//Length of transport line in km
Power_budget=10;//linked power budget in dB
Loss_singlemode_fiber=0.6;//loss of SM fiber in dB/km


Linkloss=Loss_singlemode_fiber*Transport_line;//total link loss in dB

mprintf("Link loss = %.1f dB\n ",Linkloss);
if (Power_budget < Linkloss) then
mprintf("Hence, we need to use an in-line amplifier");
else
  mprintf("Hence, we need not use an in-line amplifier");  
end
