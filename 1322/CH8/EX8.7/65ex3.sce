
//ex3
clear; 
clc;
close;
//let x=number originally sold at 25p
//let y=number originally sold at 20p
//amounts received for these were 25x pence and 20y pence & their total value was 1100pence =>25x+20y=1100 
x=poly(0,'x');
y=(1100-25*x)/20;
//when the no.s are reversed he receives 20x and 25ypence ans their total value is 1150 pence =>20x+25y=1150
y=(1150-20*x)/25;
for x=1:100
  if((1100-25*x)/20==(1150-20*x)/25)
        break
  end
end
//"substitute the x value in any one of the above equations"
y=(1100-25*x)/20;
mprintf("the total no. of books sold was %i \n ",x+y)
mprintf("the number originally sold at 25p was %i",x);
