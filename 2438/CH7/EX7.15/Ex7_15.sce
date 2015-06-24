//=====================================================================================
//chapter 7 example 15

clc;
clear;


//input data
 ID1         = 8;                     // drain current in mA
 ID2         = 8.3;                  //drain current in mA
 VDS1        = 5;                   //drainn source voltage in V
 VDS2        = 14;                 //drain source voltage in V
 ID3         = 7.1;               //drain current when VDS constant VGS change
 ID4         = 8.3;              //drain current when VDS constant VGS change
 VGS1         = 0.1;            //drain source voltage in V
 VGS2         = 0.4;           //drain source voltage in V

//calculation
 dID1        = ID2-ID1;
 dVDS        = VDS2-VDS1;
 rd          = dVDS/dID1;                //ac drain resistance
 dID2        = ID4-ID3;
 dVGS        = VGS2-VGS1;
 gm          = dID2/dVGS;               //transconductance
 u           = rd*gm;                   //amplification factor


//result
 mprintf('ac drain resistnce =%3.2d.k-ohms\n',rd);
 mprintf('transconductance =%3.2d.u ohms\n',gm/10^-3);
 mprintf('amplification factor=%3.2f.\n',u);

//=====================================================================================
