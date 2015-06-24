                 //EXAMPLE 8-5   PG NO-517
C1=1;
C2=50;
X=1000;              //X=1/(2*%pi*(L1*C1)^0.5)
Y=X*2*(C1/C2)^0.5;            //Y=(Fc2-Fc1)
disp('ii) Frequency (Fc2-Fc1) is    =  '+string ([Y]) +'  Hz ')
