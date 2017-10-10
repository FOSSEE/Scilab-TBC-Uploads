// Exa 17.1
//To calculate-
//(a) average busy-hour trafﬁc per subscriber,
//(b) trafﬁc capacity per cell,
//(c) required number of base stations per zone, and
//(d) the hexagonal cell radius for the zone. 

 clc;
 clear all;
 
 Susage=150;//subscriber usage per month in mins
 days=24;//days per month
 busyhrs=6;//in a day
 BW=4.8*10^3;  //in kHz
 Freqreuse=4/12;//Frequency reuse plan
 chwidth=200; //in kHz
 subscriber=50000;//Present subscriber count
 Sgrowth=0.05;//Growth rate per year
 Area=500;  //in km
 BTScapacity=30; //in Erlangs
 N=4;  //Initial installation design years
 
 //solution
 Erlangspersub=Susage/(days*busyhrs*60);
 printf('Average busy-hour trafﬁc per subscriber is %.4f Erlangs \n ',Erlangspersub);
 RFcarriers=BW/chwidth;
 RFcarrier_percell=RFcarriers/((Freqreuse^-1)*4); //freq reuse factor of 4

//Assuming 2 control channels per cell
CC=2;//control channels
TC_percell=2*RFcarriers/3-CC;
//Referring Erlang-B table in Appendix A
disp("Referring Erlang-B table in Appendix A,Trafﬁc capacity of a GSM cell at 2% GoS for 14 channels = 8.2 Erlangs ");
Tcapacity=8.2;// in Erlangs
disp("There are 3 cells per BTS");
BTS=3;
Traffic_perBTS=Tcapacity*BTS;
printf(' Traffic capacity per BTS is %.1f Erlangs ',Traffic_perBTS);
disp("Therefore, Traffic per BTS is less than BTS capacity(30 Erlangs)")
maxsubscriber=Traffic_perBTS/Erlangspersub;
initialsub=subscriber*(1+Sgrowth)^N;
BTS_perZone=initialsub/maxsubscriber;
printf(' The required number of base stations per zone are %d \n ',round(BTS_perZone));
cellRadius=(Area/(BTS_perZone*2.6))^0.5;
printf('The hexagonal cell radius is %.1f km \n ',cellRadius);
