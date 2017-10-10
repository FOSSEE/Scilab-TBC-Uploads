//problem 11 pagenumber  4.43
//given
n=12;
vref1=50;//volt
vref2=-50;//volt
r=(vref1-vref2)/(2^n-1);format(6);
disp('Resolution  = '+string(r)+' volt');
r=100/(2^n-1);
disp('Resolution in percent = '+string(r)+'%');


