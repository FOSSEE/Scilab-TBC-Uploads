//given 
//page no 6
clc;
disp('Solution (i)');
 w=5/12.5; //          tan(w)=5/12.5;
printf("\n The value of tan(w2) is %0.1f \n",w);
w2=atan(w)*180/%pi;
//w2=atan(w)*180/%pi
printf("\n The value of w2 is %0.1f degree\n",w2);
printf("\n The value of sin(w2) is %0.2f \n",sin(w2*%pi/180));
disp('Solution (ii)');
//Applying snell's law
n1=1.05;
n2=1.5;
w1=(n2*sin(w2*%pi/180))/n1;//a=sin(w1)
printf("\n The value of sin(w1) is %0.2f \n",w1);
printf("\n The value of w1 is  %0.0f degree \n",asin(w1)*180/%pi);
//value of w1
//tan(w1)=(p-x)12.5;
k=0.62*12.5;
d=1.05*[(12.5)^2+(k)^2]^0.5 +1.5*(12.5^2+5^2)^0.5;//d=1.05[(h1)^2+(k)^2]^0.5 +n2(h2^2+x^2)^0.5;
printf("\n the optical distance is %0.2f cm\n",d);
