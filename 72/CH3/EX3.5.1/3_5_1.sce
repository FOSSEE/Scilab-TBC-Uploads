
//chapter_no.-3,  page_no.-104
//Example_no.3-5-1

clc;

Zl=1+ %i*1;//Given normalise load impedance
disp('1. Enter Zl=1+(1*i) on the chart');
disp('read .162lamda on the distance scale by drawing a dashed straight line from the centre of the chart through the load point and inersecting the distance circle');

disp('2. move a distance from the point at .162lamda towards the generator and first stop at the voltage maxima on the right hand side real axis at .25lambda');
lambda=5;//Given wavelength =5
dVmax=(.25-.162)*lambda;
disp(dVmax,'d1(Vmax) (in cm)=');

disp('Similarly, ,move a distance from the point of .162lambda towards the generator and first stop at the voltage minimum on the left-hand real axis at .5lambda');
dVmin=(.5-.162)*lambda;
disp(dVmin,'d1(Vmin) (in cm)=');

disp('4.Make a standing wave circle with the centre (1,0) and pass the circle through the point of 1+j1.The location intersected bythe circle at the right portion of the real axis indicates the SWR .this is p=2.6');
