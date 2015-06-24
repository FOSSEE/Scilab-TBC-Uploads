clear;
clc;
disp("--------------Example 8.1---------------")
channel_bandwidth=4; // 4 kHz
n=2; // each link uses FDM to connect a maximum of two voice channels.
link_bandwidth=n*channel_bandwidth; // formula
// display the result
printf("A circuit-switched network is used to connect eight telephones in a small area. Communication is through %d-kHz voice channels.\nIt is assumed that each link uses FDM to connect a maximum of %d voice channels. The bandwidth of each link is then %d kHz.\nTelephone 1 is connected to telephone 7; 2 to 5; 3 to 8; and 4 to 6. Of course the situation may change when new connections are made.\nThe switch controls the connections.",channel_bandwidth,n,link_bandwidth);