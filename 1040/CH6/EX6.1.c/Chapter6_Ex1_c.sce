//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.1.c Pg No. 236
//Title:Speed of stirrer and blending time
//====================================================================================================================
clear
clc
//INPUT
D_a=0.1;
D_t=0.3;
H=0.3;
Da_by_Dt1=D_a/D_t;
Da_by_Dt2=0.5;
n1=2.76;

//CALCULATION
n2=(Da_by_Dt1/Da_by_Dt2)^(5/3)*n1;
rotaional_speed=n2*60;
t1=4*(1/Da_by_Dt1)^2*(H/D_t)*(1/n1);
t2=4*(1/Da_by_Dt2)^2*(H/D_t)*(1/n2);

//OUTPUT
//Console Output
mprintf('\n The new stirrer speed = %.2f sec-1 or %.0f rpm',n2,rotaional_speed); 
mprintf('\n The new blending time  for Da/Dt ratio of 0.5 = %.1f sec',t2); 

//File Output
fid= mopen('.\Chapter6_Ex1_c_Output.txt','w');
mfprintf(fid,'\n The new stirrer speed = %.2f sec-1 or %.0f rpm',n2,rotaional_speed); 
mfprintf(fid,'\n The new blending time  for Da/Dt ratio of 0.5 = %.1f sec',t2); 
mclose(fid);
//=============================================================END OF PROGRAM====================================
// Disclaimer:The answer "11.1 sec" for new blending time given in the book is numerically incorrect. "16/1.4 = 11.4285" and not "11.1" as printed in the textbook.
