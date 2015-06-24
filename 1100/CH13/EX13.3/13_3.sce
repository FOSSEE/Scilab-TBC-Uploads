clc
//initialisation of variables
h1=1474.5 //btu/lb
s1=1.5603 //btu/lb R
h2s=1277.5 //btu/lb
//Calculations and printfing
h2=h1-0.85*(h1-h2s)
printf ('h2= %.2f Btu/lb',h2)
h3=1522.4  //btu/lb
s3=1.7623 //btu/lb R
h4s=948 //btu/lb
h4=h3- 0.85*(h3-h4s)
printf ('\n h4= %.2f Btu/lb',h4)
h5=47.6 //btu/lb
h6=53.5 //btu/lb
disp('For the first rankine cycle')
h7s=840 //btu/lb
h7=h1-0.85*(h1-h7s)
printf ('h7= %.2f Btu/lb',h7)
disp('For the second rankine cycle')
h8=1493.2 //btu/lb
s8=1.6903 //btu/lb R
h9s=866 //btu/lb
h9=h8-0.85*(h8-h9s)
printf ('h9= %.2f Btu/lb',h9)
h11=51.5 //btu/lb
n1=0.401
n2=0.375
n3=0.366
e1=(n1-n2)/n2
printf ('\n Percentage Efficiency of reheat cycle compared to Rankine cycle for the first case = %.2f',e1*100)
e2=(n1-n3)/n3
printf ('\n Percentage Efficiency of reheat cycle compared to Rankine cycle for the second case = %.2f',e2*100)
