V=30;                       //Assignign values to parameters
Rcf=2;
Ref=2;
Rec=2.4;
Rbc=2;
Rac=4;
Rae=2;
Rab=2;
Rad=2;
Red=1;
Rc=Rab+Rbc;               // Simplifying the network
Re=Rcf+Ref;
Ra=1/((1/Rac)+(1/Rc));
Re1=1/((1/Re)+(1/Rec));
Ra1=Ra+Re1;
Re2=1/((1/Rae)+(1/Ra1));
Rd=Red+Re2;
Req=1/((1/Rd)+(1/Rad));
I=V/Req;                   // Calculation of battery current
disp("Ohms",Req,"Effective resistance")
disp("Amperes",I,"Battery current")