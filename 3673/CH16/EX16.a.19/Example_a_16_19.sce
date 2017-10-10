//Example_a_16_19 page no:793
clc;
I1=1;//assume I1=1 hence it will be canceled in solving the equation
V1=I1*(8+2*%i);
V2=I1*(3-4*%i);
A=V1/V2;
C=I1/V2;
I2=(I1*(3-4*%i))/(6-4*%i);
V1=I1*((5+6*%i)+(((3-4*%i)*3))/((3-4*%i)+3));
B=V1/I2;//B value slightly varies with textbook, hence values are rounded off in textbook
D=I1/I2;
reciprocity_con=(A*D)-(B*C);
reciprocity_con_mag=sqrt(real(reciprocity_con)^2+imag(reciprocity_con)^2);
reciprocity_con_ang=atand(imag(reciprocity_con)/real(reciprocity_con));
disp(A,"the value of A is ");
disp(B,"the value of B is ");
disp(C,"the value of C is ");
disp(D,"the value of D is ");
disp(reciprocity_con_mag,"the magnitude of reciprocity condition is ");
disp(reciprocity_con_ang,"the angle of reciprocity condition is ");
disp("hence reciprocity is verified");
//here reciprocity conditon is exactly satisfied hence magnitude is 1 and angle is 0 but scilab cannot produce 0(document released by scilab:SCILAB IS NAIVE, page no:3) and also the reslut slightly varies with text book hence values are rounded off in text book
