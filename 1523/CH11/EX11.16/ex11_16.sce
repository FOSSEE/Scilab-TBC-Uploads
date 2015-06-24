//Two-Port Networks : example 11.16 :(pg11.39 )
V1s=25;
I1s=1;
I2s=2;
V1o=10;
V2o=50;
I2o=2;
h11=(V1s/I1s);
h21=(I2s/I1s);
h12=(V1o/V2o);
h22=(I2o/V2o);
printf("\nh11 = V1/I1 = %.f Ohm",h11);//when V2=0
printf("\nh21= I2/I1 = %.f",h21);//when V2=0
printf("\nh12 = V1/V2 = %.1f",h12);//when I1=0
printf("\nh22 = I2/V2 = %.2f mho",h22);//when I1=0
printf("\nth h-parameters are");
disp([h11 h12;h21 h22]);