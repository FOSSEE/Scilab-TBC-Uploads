
//chapter_no.-3,  page_no.-108
////Example_no.3-6-1
clc;

R0=50;//characteristic impedance
Zl=50/(2+%i*(2+sqrt(3)));
zl=R0/Zl;//normaised load impedance
yl=1/zl;//normaised load admittance
disp('1. compute the normalised load admittance and enter it on the smith chart');

disp('2 .Draw a SWR circle throuh the point of yl so that he circle intersects the unity circle at the point yd ');
yd=1- %i*2.6;
disp(yd,'yd=');

disp('note that there are infinite number of yd.take the one that allows the stub to be attached as closely as possible the load');

disp('3. since the charcteristic impedance of the stub is different from that of the line ,the condition for impedance matching at the junction requires Y11=Yd + Ys ,where Ys is the susceptance that the stub will contribute');
  disp('it is clear that the stub and the portion of the line from the load to the junction are in parallel,as seen by the main line extending to the generator .the admittance must be converted to normalised values for matching on the smith chart .the our equation becomes');
  
  disp('y11*Y0= yd*Y0 + ys*y0s');
  y11=1;
  Y0=100;//charcteristic impedance of the stub
  Y0s=50;
  ys=(y11-yd)*(Y0/Y0s);  
  
  disp('4. the distance between the load and the stub position can be calculated from the distance scale as d=(.302-.215)*lambda');
  
  disp('5.since the stub contributes a susceptance of j5.20 ,enter j5.20 on the chart and determine the required distance l from the short circuited end(z=0,y=infinity),which corresponds to the right side of the real axis on the chart,by transversing the chart towards the generator until the point of j5.20 is reached.  Then l=(.5 -.031)lambda =.469lambda.  When a line is matched at the junction ,there will be no standing wave in the line from the stub to the generator');
  
  disp('If an inductive stub is required yd = 1+j*.26 and the susceptance will be ys =-j*5.2');
  
  disp('7.The position of the stub from the load is d=(.5-(.215-.198))lambda = .483lambda     and the length of the short-circuted stub is l =.031 lambda');
  
  
  
   