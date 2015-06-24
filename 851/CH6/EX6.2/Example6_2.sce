//clear//
//Caption:Duobinary Encoding
//Example6.2: Precoded Duobinary coder and decoder
//Page 256
clc;
b = [0,0,1,0,1,1,0];//input binary sequence:precoder input
a(1) = xor(1,b(1));
if(a(1)==1)
  a_volts(1) = 1;
end
for k =2:length(b)
  a(k) = xor(a(k-1),b(k));
  if(a(k)==1)
    a_volts(k)=1;
  else
    a_volts(k)=-1;
  end
end
a = a';
a_volts = a_volts';
disp(a,'Precoder output in binary form:')
disp(a_volts,'Precoder output in volts:')
//Duobinary coder output in volts
c(1) = 1+ a_volts(1);
for k =2:length(a)
  c(k) =  a_volts(k-1)+a_volts(k);
end
c = c';
disp(c,'Duobinary coder output in volts:')
//Duobinary decoder output  by applying decision rule
for k =1:length(c)
  if(abs(c(k))>1)
    b_r(k) =  0;
  else
    b_r(k) = 1;
  end
end
b_r = b_r';
disp(b_r,'Recovered original sequence at detector oupupt:')
//Result
//Precoder output in binary form:   
// 
//  1.    1.    0.    0.    1.    0.    0.  
// 
// Precoder output in volts:   
// 
//  1.    1.  - 1.  - 1.    1.  - 1.  - 1.  
// 
// Duobinary coder output in volts:   
//
//  2.    2.    0.  - 2.    0.    0.  - 2.  
// 
// Recovered original sequence at detector oupupt:   
// 
//  0.    0.    1.    0.    1.    1.    0.  
