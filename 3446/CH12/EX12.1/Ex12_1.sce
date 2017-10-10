// Exa 12.1
// To evaluate the impact of LUs on the radio resource and calculate the MSC/VLR transaction load using the ﬂuid ﬂow model.

clc;
clear all;

P=10000;  //Mobile density(mobiles/km^2)
R=500*10^-3; //km
V=10;  ..//Average moving velocity of a mobile in Kmph
Nc=10; //No of cells per LA
N_LA=5; //Number of LAs per MSC/VLR 

//Number of transactions and duration of each transaction to MSC/VLR per LU for different LU types are given in Table 12.1.(page no.374)

// solution
// L=length (km) of the cell exposed perimeter in an LA
L=6*R*(1/3+1/(2*sqrt(Nc)-3));   //Km
// lamdaLU=number of transactions processed by MSC/VLR in an LA perimeter of the jth cell per hour
LamdaLu=V*P*L/%pi;  //Lus per hour


// case(1)
disp("Case-1:In the ﬁrst case, the jth cell located at the border of two LAs is related to the same MSC/VLR, only intra-VLR LUs are processed in the cell");
R1_LU=LamdaLu/3600*(1*600/1000); //resource occupancy from Table 12.1
disp("");
printf(' The resource occupancy in the jth cell due to MS LUs is  %.1f Erlangs\n',R1_LU);

disp("This requires 18 channels at 1% blocking (refer to the Erlang-B table, Appendix A) or 18/8 =2.25 trafﬁc channel (about 1/4 of an RF channel, assuming there are 8 trafﬁc channels per RF channel). ")
 
//case(2)
disp("case-2:In this case the jth cell is located at the border of two LAs related to two different VLRs.In this case, only inter-VLR LUs will be processed in the cell. We assume 80% of LUs are with TMSI and 20% of LUs are with IMSI");
R2_LU=LamdaLu/3600*(0.8*3500/1000+0.2*4000/1000);  //from Table 12.1
disp("");
printf(' The resource occupancy in the jth cell due to MS LUs is  %.2f Erlangs \n',R2_LU);
disp("This requires 75 channels at 1% blocking (refer to the Erlang-B table, Appendix A) or 75/8=9.38 trafﬁc channels (about 1.25 RF channels).");


disp("MSC/VLR transaction load");

disp("We assume that one LA is in the center of the region and the remaining four LAs are on the border of the region.We also assume that, in the perimeter cells at the border LAs, only intra-VLR LUs are generated. For half of the perimeter cells at the border LAs, only inter-VLR LUs are generated.")

Np=6*sqrt(Nc/3)-3;//Number of cells located on perimeter of an LA
disp("");
printf(' Number of cells where inter-VLR LUs occur will be: %d \n',round(0.5*Np*4));
disp("");
printf(' Number of cells where intra-VLR LUs occur will be: %d \n',4*Nc-16);
disp("");
TNLU=LamdaLu*(2*24+16*(0.8*14+0.2*16));  //from table 12.1
printf(' The MSC/VLR transaction load using the ﬂuid ﬂow model is %.2f * 10^6 transactions at peak hour \n',TNLU/10^6);
