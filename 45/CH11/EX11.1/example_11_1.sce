//example 11.1
clc;
//this program requires 
//kmap3a.sci  to find the kmap 
//noof.sci function used inside kmap
//noof0.sci function used inside kmap
n= [ 0 0 0;
     0 0 1;
     0 1 0;
     0 1 1;
     1 0 0;
     1 0 1;
     1 1 0;
     1 1 1];
      for i= 1:8    //printing the state synthesis table
      an1(i,1)=n(i,3);
      dn(i,1)=n(i,3);
      if n(i,1)==1 & n(i,2) ==1 & n(i,3)==0 then
          z(i,1)=1;
      else 
          z(i,1)=0;
      end
end;
dis=[n an1 dn z];
disp('State Synthesis table :');
disp('   An    X     Y    An1    Dn    Z');
disp(dis);
printf('\n\n Design equations :\n');
Dn = [ 0 1 1 0;0 1 1 0];
Z= [ 0 0 0 0;0 0 0 1];
dn1= kmap3a(Dn);                        // finding the 3 varible kmap of Dn
printf('\n     Dn = %s \n\n',dn1);      //displaying the minimized expression
z1= kmap3a(Z);                          //finding the 3 variable kmap of Z
printf('\n     Z = %s \n\n',z1);        //displaying the minimized expression
