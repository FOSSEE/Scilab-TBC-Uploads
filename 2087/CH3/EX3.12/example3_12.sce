

//example 3.12
//calculate Dischage required at head of canal
clc;
//Given
CA=2600;       //culturable area
IS=20;         //irrigation intensity for sugarcane
IR=40;         //irrigation intensity for rice
DuS=750;         //Duty of water for sugarcane
DuR=1800;        //Duty of water for rice
PK=1.2;          //Peak demand

AS=CA*IS/100;     //Area under sugarcane  
AR=CA*IR/100;     //Area under rice
DS=AS/DuS;
DR=AR/DuR;
DT=DS+DR;
DD=PK*DT-0.005333+0.01;
DR=round(DR*1000)/1000;
DT=round(DT*1000)/1000;
mprintf("Water required for Rice=%f cumecs.",DR);
mprintf("\n Sugarcane is a perennial crop.");
mprintf("\nHence,Water required for Sugarcane=%f cumecs.",DT);
mprintf("\nDesign dischage to meet the peak demand=%f cumecs.",DD);
