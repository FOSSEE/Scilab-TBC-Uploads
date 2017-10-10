//problem 8 pagenumber 2.92
//given
format(6);
ii1=2e-3;//A
rf1=2e3;//ohm
r0=2e3;//ohm
i0=-(ii1+(ii1*rf1)/r0)

disp('Output current = '+string(i0*10^3)+' mA');


