

//example 11.2
//calculate discharge over oggy weir
clc;funcprot(0);
//given
C=2.4;          //coefficient of discharge
H=2;            //head
L=100;          //length of spillway
wc=8;           //heigth of weir crest above bottom
g=9.81;         //acceleration due to gravity
h=H+wc;
Q1=C*L*H^(1.5); //neglecting approach velocity and end contractions
va=Q1/(h*L);
ha=va^2/(2*g);
Ha=ha+H;
Q=C*L*Ha^1.5;
Q=round(Q*10)/10;
mprintf("discharge over oggy weir=%f cumecs.",Q);
