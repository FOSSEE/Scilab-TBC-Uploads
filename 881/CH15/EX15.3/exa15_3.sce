clc;
//Example 15.3
//Page No620


//solution

P=10;
Ac=0.2;

disp("Substituting into equation 15-12 yields ");

Pcap=P*Ac;

disp('uW',Pcap,"Pcap = ");

pcap=10*log10(Pcap*10^-6/0.001);

disp('dBm',round(pcap),"Pcap(dBm)");
