//clear//
//Caption:Illustrating the generation of DPSK signal
//Table7.3 Generation of Differential Phase shift keying signal
clc;
bk = [1,0,0,1,0,0,1,1];//input digital sequence
for i = 1:length(bk)
  if(bk(i)==1)
    bk_not(i) =~1;
  else
    bk_not(i)= 1;
  end
end
dk_1(1) = 1&bk(1);  //initial value of differential encoded sequence
dk_1_not(1)=0&bk_not(1);
dk(1) = xor(dk_1(1),dk_1_not(1))//first bit of dpsk encoder
for i=2:length(bk)
  dk_1(i) = dk(i-1);
  dk_1_not(i) = ~dk(i-1);
  dk(i) = xor((dk_1(i)&bk(i)),(dk_1_not(i)&bk_not(i)));
end
for i =1:length(dk)
  if(dk(i)==1)
    dk_radians(i)=0;
  elseif(dk(i)==0)
    dk_radians(i)=%pi;
  end
end
disp('Table 7.3 Illustrating the Generation of DPSK Signal')
disp('_____________________________________________________')
disp(bk,'(bk)')
bk_not = bk_not';
disp(bk_not,'(bk_not)')
dk = dk';
disp(dk,'Differentially encoded sequence (dk)')
dk_radians = dk_radians';
disp(dk_radians,'Transmitted phase in radians')
disp('_____________________________________________________')
