//To Compute the Economical Sizes of the Transformer and its Equipment
//Page 296
clc;
clear;

NC=24; //Number Of Customers Per Block

//We get the Total Annual Cost from the releveant equations as
// TAC = 239.32 + (3.1805*ST) + (3492/ST) + (28170/ST^2) + (0.405*ASL) + (17018/ASL) + (1.134*ASD) + (8273/ASD)

//We know split the above equation into 3 different parts according to factors ST,ASD,ASL

//Variable Values of the Factors
ST=poly(0,'ST');
ASD=poly(0,'ASD');
ASL=poly(0,'ASL');

//Functions to Find the TAC corresponding to the Respective Factors

deff('x=TransSize(y)','x=239.52 + (3.1805*y) + (3492/y) + (28170/(y^2))')
deff('x=SDwire(y)','x=(1.134*y)+(8273/y)')
deff('x=SLwire(y)','x=(0.405*y)+(17018/y)')

//Total Annual Costs of the respective Factors
TACST = TransSize(ST);
TACASD = SDwire(ASD);
TACASL = SLwire(ASL);

//Partially Differentiating wrt ASD we get
Y1=derivat(TACASD);
X1=roots(Y1(2));
ASD=X1(1);  //Calculated Value
ASDstd = 105.500;
ASDstd1 = 133.1;

//Partially Differentiating wrt ASL we get
Y2=derivat(TACASL);
X2=roots(Y2(2));
ASL=X2(1); //Calculated Value
ASLstd = 211.600; 
ASLstd1 = 250;

//Partially Differentiating wrt ST we get
Y3=derivat(TACST);
X3=roots(Y3(2));
ST=round(X3(1));  //Calculated Value
STstd = 50;

//Total Annual Cost of the Calculated parameters
TAC=TransSize(ST)+SDwire(ASD)+SLwire(ASL);
//Calculation Mistake in The Text Book
 
//Total Annual Cost of the First Higher Standard Parameters
TACstd=TransSize(STstd)+SDwire(ASDstd)+SLwire(ASLstd);
//Total Annual Cost of the Second Higher Standard Parameters
TACstd1=TransSize(STstd)+SDwire(ASDstd1)+SLwire(ASLstd1);

//Total Fixed Charges per Year
TACFC=((75+(2.178*STstd))+(5.4+(0.405*ASLstd))+(15.12+(1.134*ASD))+(144));
//Total Operating Charges per Year
TACOC=((0.0225*STstd)+(0.98*STstd)+(28170/(STstd^2))+(3492/STstd)+(17018/ASLstd)+(8273/ASDstd));

//Values Might Vary from those in the text due to high precision

//Fixed Charges Per Customer Per Month
FC=TACFC/(NC*12);

//Variable Costs Per Customer per month
VOC=TACOC/(NC*12);

printf('\na) The Most Economical SD Size is %g kmil and the nearest larger standard AWG wire size is %g kmil\n',ASD,ASDstd)
printf('b) The Most Economical SL Size is %g kmil and the nearest larger standard AWG wire size is %g kmil\n',ASL,ASLstd)
printf('c) The Most Economical Distribution Transformer Size is %g kmil and the nearest larger standard transformer size is %g kVA\n',ST,STstd)
printf('d) The Total Annual Cost Per Block for the theoretically most economical sizes of equipment is %g dollars\n',TAC)
printf('e) The Total Annual Cost Per Block for the nearest larger standard comercial sizes of equipment is %g dollars\n',TACstd)
printf('f) The Total Annual Cost Per Block for the nearest larger transformer size and for the second larger sizes of ASD and ASL is %g dollars\n',TACstd1)
printf('g) Fixed Charges per Customer per Month is %g dollars\n',FC)
printf('h) The Variable Operating Costs Per Customer Per Month is %g dollars\n',VOC)
