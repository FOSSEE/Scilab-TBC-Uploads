

//example 15.4
//calculate the economical depth of cutting for cross section of channel
clc;funcprot(0);
//given
B=5;                  //bed width
t=2;                  //top width of banks
h=2.92;               //heigth of banks from bed
n=1.5;

//sectional area of digging=sectional area of two banks
//By+zy^2=2(h-y)+2n(h-y)^2
//substituting the values and on simplificatio we get
s=poly([18.59,-13.26,1],'x','c');
y=roots(s);
//from this we get y=11.666556 and 1.5934436.
//taking
y=1.5934436;
y=round(y*10)/10;
mprintf("economical depth of cutting=%f m.",y);
