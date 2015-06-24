clear;
clc;
printf("\n Example 10.4");
//Since the seeds contain 20 per cent of oil
xAo=0.2;
xBo=0.8;
printf("\n xAo = %.1f and xBo = %.1f",xAo,xBo);
//The final solution contains 50 per cent oil
yA1=0.5;
yS1=0.5;
printf("\n yA1 = %.1f and yS1 = %.1f",yA1,yS1);
//The solvent which is used for extraction is pure and hence 
ySn1=1;
//1 kg of insoluble solid in the washed product is associated with 0.5 kg of solution and 0.025 kg oil.
xAn = 0.0167;
xBn = 0.6667;
xSn = 0.3166;

//The mass fraction of insoluble material in the underflow is constant and equal to 0.667. The composition of the underflow is therefore represented, on the diagram Figure 10.22, by a straight line parallel to the hypotenuse of the triangle with an intercept of 0.333 on the two main axes.

//The difference point is now found by drawing in the two lines connecting x0 and y1 and xn and yn+1.

//The graphical construction described in the text is then used and it is seen from Figure 10.22 that xn lies in between x4 and x5.
printf("\n Thus 5 thickeners are adequate and for the required degree of extraction");


