//Chapter-6, Example 6.11, Page 242
//=============================================================================
clc;
//Calculations
S13=0.1*(cos(90*%pi/180)+(%i)*sin(90*%pi/180));//conversion from polar to rectangular
S13=abs(S13);
C=-20*log10(S13);//coupling coefficient in dB
S14=0.05*(cos(90*%pi/180)+(%i)*sin(90*%pi/180));//conversion from polar to rectangular
S14=abs(S14);
D=20*log10(S13/S14);//directivity in dB
I=-20*log10(S14);//isolation in dB
mprintf("Thus coupling,directivity and isolation are %1.0f dB,%1.2f dB and %2.2f dB respetively ",C,D,I);
//=================================END OF PROGRAM==============================
