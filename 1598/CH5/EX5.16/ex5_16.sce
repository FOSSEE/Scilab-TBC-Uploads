clc;
R=15;  //resistance in Ohm
disp("KVL: 16I1+15I2=6   (1)");  //KVL equation
I1=-1.66;  //from(1)
I2=2.17;  //from (1)
disp(I1);  //current in Ampere
disp(I2)
V=(I1+I2)*R;  //calculating potential difference
disp(V,"Potential difference in Volt = ");  //displaying result