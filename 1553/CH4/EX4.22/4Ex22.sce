//chapter 4 Ex 22

clc;
clear;
close;
x=poly(0,'x');
y=(2*x-180)/3;        //equation 1
y=240-x;    //equation 2
for x=1:200
  if  (2*x-180)/3==240-x
    break
  end
end
y=240-x;
printf("Arun got %d marks in English",y);
