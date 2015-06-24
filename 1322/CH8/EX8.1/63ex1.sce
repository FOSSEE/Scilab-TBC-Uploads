
//2x+y=21, 3x+4y=44
clear; 
clc;
close;
x=poly(0,'x');
y=21-2*x;        //equation 1
y=(44-3*x)/4;    //equation 2
for x=1:20
  if(21-2*x==(44-3*x)/4)
    mprintf(" the solution is :\n x=%i \n ",x)
    break
  end
end
//"substitute the x value in any one of the above equations"
y=21-2*x;mprintf(" y=%i \n",y)



