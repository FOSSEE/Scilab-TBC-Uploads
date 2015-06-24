//Finding of Dimemsions
//Given
q=0.5;
sb=1/3000;
c=60;
n=0.015;
//To Find
y=q/(2*c*(1/2)^(0.5)*(sb)^(1/2));
y1=y^(2/5);
b=2*y1;
y2=q/(2*(1/n)*(1/2)^(2/3)*(sb)^(1/2));
y3=(y2)^(3/8);
b1=2*y3;
disp("Economical Dimensions ="+string(b)+" meter");
disp("Economical Dimensions ="+string(b1)+" meter");
