clear all; clc;

disp("From figure 8.14c we have Pl=620hp at N=18400rpm. Pick a point on the curve of N/(T01^0.5)=18400/(530^0.5)=800")
disp("In figure 8.14a,say p02/p01=5")
disp("So we have")

disp("m(T01^0.5)/p01   ETAc   p02(psia)   m(lbm/s)   p03(psia)   p03/p04")
disp("   5.7            0.85     73.5       3.64       71.5        4.86")

disp("where p02=5*14.7")
 p02=5*14.7
 printf(" Thus p02= %0.2f",p02)
 
disp("m=5.7*14.7/(530^0.5)")
 m=5.7*14.7/(530^0.5)
 printf(" m= %0.2f",m)
 
disp("73.5-2")
 p03=73.5-2
 printf(" m= %0.2f psia",p03)
 
//Let i=p03/p04
i=71.5/14.7
printf("\n p03/p04= %0.2f",i)

disp("Then from figure 8.14b,with p03/p04 and m3=m2 we have")
disp("m(T01^0.5)/p01     T03(R)   N/(T03^0.5)      ETAt")
disp("2.56                2528        366           0.87")

disp("where T03=(2.56*71.5/3.64)^2")
T03=(2.56*71.5/3.64)^2
printf(" T03= %0.2f",T03)

disp("N/T03=18400/(2528^0.5)")
//let k=N/T03
k=18400/(sqrt(2528))
printf(" Thus T03= %0.2f",k)

disp("So from equations (8.1),(7.4) and(8.11) we have:")
disp("delta_T034=ETAt*T03*[1-(p04/p03)^((k-1)/k)]")
delta_T034=0.87*2528*[1-(4.86)^(-0.248)]
printf(" delta_T034 = %0.0f R",delta_T034)

disp("delta_T012=(T01/ETAc)*[(p02/p01)^((k-1)/k)-1]")
delta_T012=(530/0.85)*[(5^0.2857)-1]
printf(" delta_T012= %0.0fR",delta_T012)

P0=3.64*(0.28*713-0.24*(364/0.95))
printf(" \n and P0=3.64*(0.28*713-0.24*(364/0.95))= %0.0f Btu/s=554hp, which is less than Pl",P0)

disp("So we pick another point on the same curve , say p02/p01=5.2, and repeat the calculations ")

disp("m(T01^0.5)/p01  ETAc  p02(psia)  m(lbm/s)  p03(psia)  p03/p04  m(T01^0.5)/p01  T03(R)  N/(T03^0.5)  ETAt")
disp("5.6             0.88   76.4       3.57       74.4       5.06     2.55            2824    346         0.85")

delta_T034=0.85*2824*[1-(5.06^(-0.248))]
printf("\n The new delta_T034= %0.2fR",delta_T034)//the book has rounded off the value to 794R,the value calculated in this code is more accurate

delta_T012=(530/0.88)*[(5.2^0.2857)-1]
printf("\n delta_T012= %0.0fR",delta_T012)

P0=3.57*(0.28*794-0.24*362/0.95)
printf("\n Net output power P0= %0.0f Btu/s=660hp, which is much greater than Pl \n\n",P0)

disp("Pick another point say p02/p01=5.15")

disp("m(T01^0.5)/p01  ETAc  p02(psia)  m(lbm/s)  p03(psia)  p03/p04  m(T01^0.5)/p01  T03(R)  N/(T03^0.5)  ETAt")
disp("5.65            0.87   75.7       3.61       73.7       5.01     2.55            2710    353         0.86")

delta_T034=0.86*2710*[1-(5.01^(-0.248))]
printf("\n\n From new values delta_T034= %0.0f R",delta_T034)

delta_T012=(530/0.87)*[(5.15^(0.2857))-1]
printf("\n and delta_T012= %0.0f R",delta_T012)

P0=3.61*(0.28*768-0.24*(364/0.95))
printf("also P0= %0.1f Btu/s =628hp",P0)

disp("P0 is close to Pl")
disp("So the running point is around p02/p01=5.15, m(T01^0.5)/p01=5.65")
disp("and N/(T01^0.5)=800 on the compressor characteristics")
disp("It is not too close to the surge line and hence is safe.")


















 



























