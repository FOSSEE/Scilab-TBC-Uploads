clear;
//clc();
v=11;
ct=0.7;
cs=0.4;
cc=(ct-cs)/2;
printf("\n the capacitance between conductors is:  %.2f uF\n ",cc);

cl=0.5*(3*cc + cs);

ic=(v*2*3.14*50*2*cl*.001)/sqrt(3);..//charging current in ka/phase
printf("\n the charging current is:  %.3f A\n ",ic); 
