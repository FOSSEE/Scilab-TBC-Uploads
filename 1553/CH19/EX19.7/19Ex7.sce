//chapter 19 Ex 7

clc;
clear;
close;
dUp1=40; dDown1=55; dUp2=30; dDown=44; 
t1=13; t2=10;
//let rate upstream be x km/hr and downstream be y km/hr
//Equations are : 40/x+55/y=13 & 30/x+44/y=10
x=poly(0,'x');
y=(-55*x)/(40-13*x);        //equation 1
y=(-44*x)/(30-10*x);    //equation 2
for x=1:99
    if(x~=3)            //since denominator becomes 0
  if (-55*x)/(40-13*x) ==(-44*x)/(30-10*x)
    mprintf("x=%i \n ",x);
    break
  end
  end
end

y=(-55*x)/(40-13*x);

rStill=(x+y)/2;
rCurrent=(y-x)/2;
printf("The speed in still water is %d km/hr and rate of current is %d km/hr",rStill,rCurrent);
