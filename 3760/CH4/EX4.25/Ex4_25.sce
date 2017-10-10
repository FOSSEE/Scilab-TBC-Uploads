clc;
//repeat part (b) of example 4.21

//PART(a)-
//When the demagnetizing effect is accounted for, then from equation :-Net mmf = Nf*If+Ns*Is-ATd ....(1)
//1.26*1000=1.00*1000+10Is-0.022Is*1000
Ns=round(0.3578*1000/44.5);//no of turns in series field winding

//PART(b)-
//If there are 10 series field turns, then from equation (1),
//1.26*1000=1.00*1000+10Is-0.0022Is*1000
Is=0.26/0.0078
//Out of the total armature current of 44.5 A, only Is(33.3) should flow through the series field.
//This can be achieved by putting a resistor in parallel with the series field winding.
//33.3=(44.5*Rdi)/(0.05+Rdi)
Rdi=0.05/0.3363;
printf('NO OF TURNS IN SERIES FIELD WINDING ARE %f.',Ns);
printf('\nTHE RESISTANCE OF DIVERTER Rdi SHOULD BE %f OHMS.',Rdi);
