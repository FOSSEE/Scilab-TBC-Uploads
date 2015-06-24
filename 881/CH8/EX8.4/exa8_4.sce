clc;
//Example 8.4
//Page no 310



//solution

SN=38; //dB
In=-112; //dBm
FMi=17; //dB
NF=5; //dB

sn=SN-FMi+NF;

disp('dB',sn,"The receiver input S/N is ");

rs=In+sn;

disp('dBm',rs,"Therefore, the minimum receive signal level is ");
