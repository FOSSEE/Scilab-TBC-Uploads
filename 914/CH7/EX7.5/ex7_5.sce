clc;
warning("off");
printf("\n\n example7.5 - pg 282");
// given
Fextx=-2522;  //[lb] - force in x direction
Fexty=2240;  //[lb] - force in y direction
// the force exerted by the elbow on the fluid is the resolution of Fext,x and Fext,y , therefore
Fext=((Fextx)^2+(Fexty)^2)^(1/2);
alpha=180+(atan(Fexty/Fextx))*(180/%pi);
printf("\n\n the force has a magnitude of %flb and a direction of %f from the positive x direction(in the second quadrant",Fext,alpha);

 
