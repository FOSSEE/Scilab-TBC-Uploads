clear;
clc;
d =10;// inches
b = 8;// inches
t1 = 1;// inch
t2 = 0.6;// inch
I = (1/12)*(b*d^3 - (b-t2)*b^3);// in^4
//(i) Resistance to  M
R1 = integrate('(t2/I)*y^2','y',-4,4);
//(ii) Resistance to F
R2 = integrate('(4/I)*(25-y^2)','y',4,5);
printf('The moment of resistance offered by the flanges is %.3fM. The flanges take up %.1f percentage of the B.M.,\n the web resisting only %.1f percentage of the B.M',1-R1,(1-R1)*100,R1*100);
printf('\n The shear borne by the web is %.4fF. The web thus takes up %.2f percentage of the shear force.,\n the flanges resisting only %.2f percentage of the shear force',(1-2*R2),(1-2*R2)*100,2*R2*100);
