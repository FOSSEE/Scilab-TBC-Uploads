//chapter 8
//example 8.4
//page 301
Toff=1;Ton=3;//given
C=10*10^-6;//choosing 
R2=Toff/(.693*C);//using eq Toff=.693RC
disp(R2)//resistance
//Ton=.693(R1+R2)C
R1=(Ton/(.693*C))-R2;
disp(R1)//required resistance