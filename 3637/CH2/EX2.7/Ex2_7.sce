//problem 7 pagenumber 2.91
//given
format(6);
r1=1e3;//ohm
r2=100e3;//ohm
rf1=90e3;//ohm
//determine cmrr
ac=(r2-rf1)/(r1+r2);
ad=(rf1+((((rf1+r1)/r1)*r2)/(r1+r2)))/r1;format(12);
disp( 'CMRR = '+string(ad/(ac)));//no unit

