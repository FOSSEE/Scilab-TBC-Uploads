clc
B=180+60
I=140+1/6
B1=B+I-180
if B1>180 then B2= B1-180;
 else B2=B1+180;
end
printf('Bearing of AD = %f\n',B1)
printf(' Bearing of DA = %f\n',B2)
B=B1
I=69+2/6
B1=B+I-180
if B1>180 then B2= B1-180;
 else B2=B1+180;
end
printf(' Bearing of DC = %f\n',B1)
printf(' Bearing of CD = %f\n',B2)
B=B1
I=60+22/60
B1=B+I+180
if B1>180 then B2= B1-180;
 else B2=B1+180;
end
printf(' Bearing of CB = %f\n',B1)
printf(' Bearing of BC = %f\n',B2)
B=B1
I=90+8/60
B1=B+I-180
if B1>180 then B2= B1-180;
 else B2=B1+180;
end
printf(' Bearing of BA = %f\n',B1)
printf(' Bearing of AB = %f\n',B2)
