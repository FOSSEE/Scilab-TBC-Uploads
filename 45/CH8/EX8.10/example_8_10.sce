//Example 8.10
clc
clear
close
b=[0 1 0 1 0 1 0 1];//given truth tble for the fictitious flip flop 
a = [0 0 1 1 0 0 1 1];
qn = [0 0 0 0 1 1 1 1];
for i=1:8
if(a(i)==0 & b(i)==0) then 
    qn1(i) = 0;
    end;
if (a(i)==1 & b(i)== 1) then 
    qn1(i) = 1 ;
 end;
 if (a(i)==1 & b(i)== 0) then 
    qn1(i) = bitcmp(qn(i),1) ;
 end;
 if (a(i)==0 & b(i)== 1) then 
    qn1(i) = (qn(i)) ;
 end;
end;
for i = 1 : 8   // printin the truth table 
        Y(i,1)=qn(i);
        Y(i,2)=a(i);
        Y(i,3)=b(i);
        Y(i,4)=qn1(i);
        end
disp('The given truth table  is :');
disp('  Qn     A     B    Qn+1');
disp(Y);
disp('The transitions are shown below');
c1=0;
c2=0;
c3=0;
c4=0;
for j=1:8 //checking all possible cases to make a transition table  
            if(qn(j)==0) then
         if(qn1(j) == 0) then
             if(c1==0) then
                 disp('transition from 0 ----> 0');
                 disp('   A     B ');
                 c1=1;
                 end;
                disp(Y(j,2:3));
        end;
  end;
end;
for j=1:8
        if(qn(j)==0) then
         if(qn1(j) == 1) then
             if(c2==0) then
                 disp('transition from 0 ----> 1');
                 disp('   A     B ');
                 c2=1;
                 end;
                disp(Y(j,2:3));
        end;
  end;
end;
for j=1:8
        if(qn(j)==1) then
         if(qn1(j) == 0) then
             if(c3==0) then
                 disp('transition from 1 ----> 0');
                 disp('   A     B ');
                 c3=1;
                 end;
                disp (Y(j,2:3));
        end;
  end;
end;
for j=1:8
        if(qn(j)==1) then
         if(qn1(j) == 1) then
             if(c4==0) then
                 disp('transition from 1 ----> 1');
                 disp('   A     B ');
                 c4=1;
                 end;
                disp(Y(j,2:3));
        end;
  end;
end; 