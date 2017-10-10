//problem 10 pagenumber  4.42
//given
z=['111111','100110'];
vref1=20;//volt
e=1/base2dec(z(1),2)*vref1;format(6);
disp('Minimum voltage each bit = '+string(e)+' volt');
e=base2dec(z(2),2)/base2dec(z(1),2)*vref1;

disp('Output voltage at '+string(z(2))+' = '+string(e)+' volt');


