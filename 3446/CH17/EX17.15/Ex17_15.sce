// Exa 17.15
// To calculate No of RNC required.

clc;
clear all;

BTS=800;//No of BTS sites
Sec=3;//No of sectors per BTS
freq_sec=2;//No of frequencies used per sector
cellsRNC=1152;//Maximum capacity of cellRNC
btsRNC=384;//One RNC can support btsRNC(BTSs)
VE=25;//Voice service(mErl/subscriber)
BRV=16;// bitrate Voice
CS1=10;//CS data service 1(mErl/subscriber)
BRC1=32;//bit rate for CS1 in kbps
CS2=5;//CS data service 2(mErl/subscriber)
BRC2=64;////bit rate for CS2 in kbps
PSdata=0.2;//PS data service(kbps per subscriber)
PSoverhead=0.15;
SHO=0.4;//40%
Totalsub=350000;//Total subsribers
Maxcap=196;//Maximum Iub capacity of tpRNC (in Mbps)
FR1=0.9;FR2=0.9;FR3=0.9;//Filler rates

//solution
RNCreqd=(BTS*Sec*freq_sec)/(cellsRNC*FR1);//from eqn 17.28
printf('using equation 17.28,Number of RNC required are %d \n ',round(RNCreqd));
RNC_reqd=BTS/(btsRNC*FR2);//from eqn 17.29
printf('using equation 17.29,Number of RNC required are %d \n ',round(RNC_reqd));
RNCrequired=((VE/1000*BRV+CS1/1000*BRC1+CS2/1000*BRC2+(PSdata/(1-PSoverhead)))*(1+SHO)*Totalsub)/(Maxcap*1000*FR3);//from eqn 17.30
printf('using equation 17.30,Number of RNC required are %d \n ',round(RNCrequired));

printf(' We select first value which is %d RNCs \n ',round(RNCreqd));
