clc
//initialization of varaibles
e=0.85
disp("From Mollier chart and table 3,")
h1=1474.5 //B/lb
s1=1.5603 //B/lb R
h2s=1277.5 //B/lb
//calculations
h2=h1-e*(h1-h2s)
h3=1522.4 //B/lb
h4s=948 //B/lb
h4=h3-e*(h3-h4s)
h5=47.6 //B/lb
h6=53.5 //B/lb
h7s=840 //B/lb
h7=h1-e*(h1-h7s)
h8=1493.2 //B/lb
h9s=866 //B/lb
h9=h8-e*(h8-h9s)
h11=51.5 //B/lb
eta1=0.401
eta2=0.375
eta3=0.366
IE1=(eta1-eta2)/eta2
IE2=(eta1-eta3)/eta3
//results
printf("Improvement in efficiency = %d percent",IE1*100 +1)
printf("\nImprovement in efficiency in case 2= %.1f percent",IE2*100)
