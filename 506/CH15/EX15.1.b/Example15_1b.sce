clear;
clc;

//Caption:difference in output voltage for two set of output signals when Common Mode Rejection Ratio =10000
//Given Data
//First Set of Input Signal
v11=50;//in microV
v21=-50;//in microV
//Second Set of Input Signal
v12=1050;//in microV
v22=950;//in microV
p=100;//Common Mode Rejection Ratio

//Required Formulae
//vo = Ad*vd*(1+vc/p*vd) .... p = commom mode rejection ratio
//Ad  will be same for both case, So let us write Vo = vo/Ad = Ad*(1+vc/p*vd)

//First Set of Values
vd1=v11-v21;//in microV
vc1=(v11+v21)/2;//in microV
Vo1 = vd1*(1+vc1/(p*vd1));

//Second Set of Values
vd2=v12-v22;//in microV
vc2=(v12+v22)/2;//in microV
Vo2 = vd2*(1+vc2/(p*vd2));


//Now we have to calculate the same thing with common mode rejection ratio = 10000

p=10000;//Common Mode Rejection Ratio

//First Set of Values
vd1=v11-v21;//in microV
vc1=(v11+v21)/2;//in microV
Vo1 = vd1*(1+vc1/(p*vd1));

//Second Set of Values
vd2=v12-v22;//in microV
vc2=(v12+v22)/2;//in microV
Vo2 = vd2*(1+vc2/(p*vd2));

disp(100*(Vo2-Vo1)/Vo1,'Percentage difference in output signal=');

//end