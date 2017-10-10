//problem 12 pagenumber  4.43
//given
n=10;
vref1=-10;//volt
vref2=10;//volt
r=(vref2-vref1)/(2^n-1);format(6);
disp('Resolution = '+string(r*1e3)+' milivolt');
r=100/(2^n-1);
disp('Resolution in percent = '+string(r)+'%');


