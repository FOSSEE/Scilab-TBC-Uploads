clc
//Example 6.19
//Calculate total current through load
//On applying source transformation 
//From figure 6.65
i=%i
V1=10;V2mag=5;V2ph=90;V3mag=14.4;V3ph=225;
x=V2mag * cos (( V2ph * %pi ) /180) ;
y=V2mag * sin (( V2ph * %pi ) /180) ;
V2= complex (x,y)
a=V3mag * cos (( V3ph * %pi ) /180) ;
b=V3mag * sin (( V3ph * %pi ) /180) ;
V3= complex (a,b)
G1=1/2;G2=1/(2+i*3);G3=1/(2-i*2);
//By applying Millman Theorem
disp('V=((V1*G1)+(V2*G2)+(V3*G3))/(G1+G2+G3)')
V=((V1*G1)+(V2*G2)+(V3*G3))/(G1+G2+G3)
[Vmag Vang]=polar(V)
R=1/(G1+G2+G3)
printf("V=%3.2f(%3.2f deg)V",Vmag,(Vang*180)/%pi)
disp(R,'R=')
//Consider the resultant circuit from figure 6.66
disp('Let the total current through 3+i4 be I')
//Applying KVL to the circuit
I=V/(3+i*4+R)
[Imag Iang]=polar(I)
printf("I=%3.2f(%3.2f deg)V",Imag,(Iang*180)/%pi)

