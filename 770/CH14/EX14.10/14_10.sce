clear; 
clc;

//Example - 14.10
//Page number - 466
printf("Example - 14.10 and Page number - 466\n\n")

//Given,
T = 25 +173.15;//[K] - Temperature
x_1=[0.0115,0.0160,0.0250,0.0300,0.0575,0.1125,0.1775,0.2330,0.4235,0.5760,0.6605,0.7390,0.8605,0.9250,0.9625];
y_1=[8.0640,7.6260,7.2780,7.2370,5.9770,4.5434,3.4019,2.8023,1.7694,1.3780,1.2302,1.1372,1.0478,1.0145,1.0070];
y_2=[1.0037,1.0099,1.0102,1.0047,1.0203,1.0399,1.1051,1.1695,1.4462,1.8520,2.2334,2.6886,3.7489,4.8960,5.6040];

x_2 = zeros(1,15);// x_2 = (1 - x_1)
G_RT = zeros(1,15);// G_RT = G_excess/(R*T)
x1x2_G_RT = zeros(1,15);// x1x2_G_RT = (x_1*x_2/(G_excess/(R*T)))
G_RTx1x2 = zeros(1,15);// G_RTx1x1 = G_excess/(R*T*x_1*x_2)

for i=1:15;
    x_2(1,i)=(1-x_1(i));
    G_RT(1,i)=(x_1(i)*log(y_1(i)))+(x_2(i)*log(y_2(i)));
    x1x2_G_RT(1,i)=(x_1(i)*x_2(i))/G_RT(i);
    G_RTx1x2(1,i)=1/x1x2_G_RT(i);
    
end

//From Van Laar equation 
// G_RTx1x2 = (x_1*x_2/(G_excess/(R*T))) = 1/A + (1/B -1/A)*x_1
//slope = (1/B -1/A) and intercept = 1/A

//Now employing the concept of linear regression of the data ( x_1 , x1x2_G_RT ) to find the value of intercept and slope of the above equation
//Let slope = slop and intercept = intr

[slop,intr,sig]=reglin(x_1,x1x2_G_RT);

A = 1/intr;
B = 1/(slop+(1/A));
printf(" The value of van Laar parameters are\n A = %f and B = %f\n\n",A,B);

// Now from Margules equation
// G_RTx1x2 = G_excess/(R*T*x_1*x_2) = B1*x_1 + A1*x_1 = A1 + (B1 - A1)*x_1
//slope = (B1 - A1) and intercept = A1

// Again employing the concept of linear regression of the data ( x_1 , G_RTx1x2 ) to find the value of intercept and slope of the above equation
//Let slope = slop1 and intercept = intr1

[slop1,intr1,sig1]=reglin(x_1,G_RTx1x2);

A1 = intr1;
B1 = slop1 + A1;
printf(" The value of Margules parameters are\n A = %f and B = %f\n\n",A1,B1);

printf(" Because of the higher value of correlation factor for Van Laar model, it fits the data better.");


