        //EXAMPLE 5-14  PG NO-306
V1=120;
V2=65;
R1=40;
R2=60;
IN=(V1/R1)+(V2/R2);
RN=(R1*R2)/(R1+R2);
IRL=IN*(RN/(RN+11));
disp('i) Current (IN) is   =  '+string (IN)+'A ');
disp('i) Current (RN) is   =  '+string (RN)+'ohms ');
disp('i) Current (IRL) is   =  '+string (IRL)+'A ');
