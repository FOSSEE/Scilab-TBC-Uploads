

//example 21.2
//calculate maximum generation capacity of generator
//pondage to be provided
clc;funcprot(0);
//given
Q=40;         // minimum flow in river
H=30;         //net head
lf=0.73;       //load factor
eita=0.6;     //plant efficiency

P=9.81*Q*H*eita;
pk=P/lf;
pk=round(pk*10)/10;
mprintf("maximum generation capacity of generator=%f kW.",pk);

pp=pk-P;           //power develop from pondage
Q=pp/(9.81*H*eita);
pr=Q*4*3600/10000;
pr=round(pr*10)/10;
mprintf("\nPondage required=%fD+4 cubic metre.",pr);
