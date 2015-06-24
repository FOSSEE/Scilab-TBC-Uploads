//example 10.14
//this program uses the following functions 
//kmap3.sci
//noof.sci and noof0.sci
//the above programs should be executed before executing these programs  
clc;
n= [ 0 0 0;
     0 0 1;
     0 1 0;
     0 1 1;
     1 0 0;
     1 0 1;
     1 1 0;
     1 1 1];
     for i= 1 : 5
         n1(i,:)= n(i+1,:) 
     end
     for i=6:8
     n1(i,:)=[0 0 0]
  end;
  p=1;
  for i= 1:3  //making the state table 
      for j = 1:8
          if n(j,i)== 0 
              jf(j,p)= n1(j,i);
              jf(j,p+1)= 2;
          elseif n(j,i) == 1
              jf(j,p)=2;
              jf(j,p+1)=bitcmp(n1(j,i),1);
      end
  end
  p=p+2
end;
disp('State tabel for mod 6 counter:'); //displaying the state table 
di= [n n1 jf];
disp('   Cn    Bn    An   Cn1   Bn1    An1   Jc    Kc    Jb    Kb    Ja    Ka');
disp(di);
disp('Here ''2'' represents a don''t care condition');
disp('These below Karnaugh maps give the design equations');

jc=[0 0 1 0;2 2 2 2] //Krnaugh Maps for the design equations 
JC=kmap3(jc);   //calling the 3-variable kmap 
printf('\n\nJC = %s \n',JC); //displaying the result

kc=[2 2 2 2;0 1 1 1]
KC=kmap3(kc);//calling the 3-variable kmap 
printf('\n\nKC = %s \n',KC); //displaying the result

jb=[0 1 2 2;0 0 2 2]
JB=kmap3(jb);//calling the 3-variable kmap 
printf('\n\nJB = %s \n',JB); //displaying the result

kb=[2 2 1 0;2 2 1 1]
KB=kmap3(kb);//calling the 3-variable kmap 
printf('\n\nKB = %s \n',KB); //displaying the result

ja=[1 2 2 1;1 2 2 0]
JA=kmap3(ja);//calling the 3-variable kmap 
printf('\n\nJA = %s \n',JA); //displaying the result

ka=[2 1 1 2;2 1 1 2]
KA=kmap3(ka);//calling the 3-variable kmap 
printf('\n\nKA = %s \n',KA); //displaying the result
