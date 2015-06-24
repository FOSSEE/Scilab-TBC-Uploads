clc;clear;
//Example 17.11

//given data
Ma1=2;
P1=75;
O=10;//angle b/w shock wave and normal

//constants used
k=1.4;

//calcualtions
//with given values of Ma1 and O from Eq 17-46
Bweak=39.3;
Bstrong=83.7;
//Weak shock
Ma1w=Ma1*sind(Bweak);
//Strong shock
Ma1s=Ma1*sind(Bstrong);
//from second part Eq 17-40
Ma2w=0.8032;
Ma2s=0.5794;
//pressure ratio = (2*k*Ma^2 - k + 1)/(k + 1 )
//Weak shock
P2w=P1*(2*k*Ma1w^2 - k + 1)/(k + 1 );
P2w=ceil(P2w);
disp(P2w,'pressure for weak shock in kPa');
//Strong shock
P2s=P1*(2*k*Ma1s^2 - k + 1)/(k + 1 );
P2s=floor(P2s);
disp(P2s,'pressure for strong shock in kPa');
//Weak shock
Ma2=Ma2w/sind(Bweak-O);
disp(Ma2,'Mach number downstream for weak shock');
//Strong shock
Ma2=Ma2s/sind(Bstrong-O);
disp(Ma2,'Mach number downstream for strong shock');
