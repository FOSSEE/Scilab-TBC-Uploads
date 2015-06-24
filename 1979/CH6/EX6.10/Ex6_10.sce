//Chapter-6, Example 6.10, Page 242
//=============================================================================

clc ;
clear;
close;
In_loss =0.5; // i n s e r t i o n l o s s ( i n dB)
C =20; //coupling coefficient i n dB
D =35; //directivity i n dB
Pi_Pf =10^( C /10) ;
Pi =90; // i n Watts
Pf=Pi/ Pi_Pf ;
Pf_Pb =10^( D /10) ;
Pb=Pf/ Pf_Pb ;
P_rec =(Pi -Pf -Pb); //Power r e c e i v e d ( i n Watts )
P_rec_dB =10* log (Pi/ P_rec )/log (10) ;
P_rec_eff = P_rec_dB - In_loss ; // E f f e c t i v e power r e c e i v e d ( i n dB)
disp ( Pf , 'Output power through coupled port ( i n Watts)=' );
disp ( Pb , 'Output power through isolated port ( i n Watts)=' );
disp ( P_rec_dB , ' Power r e c e i v e d ( i n dB)=' );
disp ( P_rec_eff , ' E f f e c t i v e power r e c e i v e d ( i n dB)=' );


//=================================END OF PROGRAM==============================

