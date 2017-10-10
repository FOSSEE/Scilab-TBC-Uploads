// Exa 17.2 
// To calculate voice and data traffic per cell.

clc;
clear all;

usage=150; //subscriber usage per month in mins
days=24;//Days in a month
BHrs=6;//Busy hours per day
BW=4.8;  //in MHz
RFch=200;  //in kHz
Psubscribers=50000;//present subscriber count
growth=0.05;//subscriber growth per year
rollover=4;//network roll over period
NPCS=5;//Number of packet calls per session 
NPP=25;//Number of packets within a packet call 
Tr=120;//Reading time between packet calls(sec)
NBP=480*8;//Packet size(in bits)
Tint=0.01;//Time interval between two packets(sec)
Ttot=3000;//Total packet service holding time
BH_PS=0.15;//Busy hour packet sessions per subscriber
Penetration=0.25;
datarate=48;  //in kbps
PTT=10;//Packet transmission time(sec)
BTS=40;//NO of BTS sites

//solution
Bitstx_duringPTT=NPCS*NPP*NBP/1000;   
PST=PTT+Tr*(NPCS-1)+Tint*(NPP-1);
PT_duringBH=BH_PS*Ttot/PST;
Bits_persub_persec=Bitstx_duringPTT*PT_duringBH/(60*60);
VoiceErlangs=usage/(days*BHrs*60);
Initial_subscribers=round(Psubscribers*(1+growth)^rollover);
Data_subscribers=Initial_subscribers*Penetration;
Totalvoice=Initial_subscribers*VoiceErlangs;
Voicetraffic_perBTS=Totalvoice/BTS;
printf('Voice Traffic per Cell(sector) is %.2f Erlangs \n ',Voicetraffic_perBTS/3);
Totaldata=Data_subscribers*Bits_persub_persec;
Datathroughput_perBTS=Totaldata/BTS;
printf("Data throughput per Cell(sector) is %.2f kbps \n ',Datathroughput_perBTS/3);
