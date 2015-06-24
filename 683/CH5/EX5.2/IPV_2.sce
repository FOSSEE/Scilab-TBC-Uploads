// sum 5-2
clc;
clear;
//Elastic limit=sige
sige=310;
//inside diameter=di
di=300;
p=1.8;
FOS=2;
//design stress=sigd;
sigd=sige/2;
c=0.162;
d=380;
//cover plate thickness=t;
t=d*sqrt(c*p/sigd);
t=17;
M=di*p*t/4;

z=(1/6)*1*t^2;
//bending stress=sigb;
sigb=M/z;

  // printing data in scilab o/p window
  printf("t is %0.1fmm ",t);
  printf("\n M is %0.1fmm ",M);
  printf("\n sigb is %0.1fmm ",sigb);
  if (sigb<=sigd) then
    disp ('sigb is below allowable sigd.')
end
