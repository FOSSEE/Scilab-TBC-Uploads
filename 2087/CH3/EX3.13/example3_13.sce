

//example 3.13
//compare the efficiency
clc;funcprot(0);
//given
ql=20;          //discharge in left branch
Al=20000;       //culturable area in left branch
Bl=120;         //Base period in left branch
Il=0.8;         //intensity of rabi in left branch
qr=8;           //discharge in rigth branch
Ar=12000;       //culturable area in rigth branch
Br=120;         //Base period in rigth branch
Ir=0.5;         //intensity of rabi in rigth branch

//for left canal
ARl=Al*Il;
Dl=ARl/ql;
mprintf("Duty for left canal is=%i hectares/cumecs.",Dl);

//for rigth canal
ARr=Ar*Ir;
Dr=ARr/qr;
mprintf("\nDuty for left canal is=%i hectares/cumecs.",Dr);
mprintf("\nSince,left canal has higher duty,it is more efficient");

