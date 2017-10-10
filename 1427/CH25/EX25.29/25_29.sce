//ques-25.29
//Calculating surface tension of liquid A and how many times is the water drop heavier than a drop of A
clc
n1=25;//drops of water
n2=55;//drops of A
den1=0.996;//density of water (in g/mL)
den2=0.8;//density of A (in g/mL)
st1=72;//surface tension of water (in dynes/cm)
st2=(st1*n1*den2)/(n2*den1);//surface tension of A (in dynes/cm)
ratio=st1/st2;
printf("The surface tension of A is %.1f dynes/cm and water drop is %.2f times heavier than drop of A.",st2,ratio);
