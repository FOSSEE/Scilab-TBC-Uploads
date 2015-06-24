//example 4.10
clc;
clear;
//sel= input('Enter which is pressed(1 - 9) : ');
sel=6;
aa=sel;
for i=4:-1:1 //converting the sel input to binary notation 
    a(1,i)=modulo(aa,2);
    b(1,i)=bitcmp(a(1,i),1);
    aa=aa/2;
    aa=floor(aa);
end
printf('When switch %d is pressed the ABCD output is :',sel);
disp(b); //displaying the result 
printf(' Which is equivalent to %d when the output is complimented.In the output above a ''0'' represents a LOW and a ''1'' represents a HIGH. ',sel );
