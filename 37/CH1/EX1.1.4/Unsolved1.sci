//Exercise1.1 Example.1.1.4
//To calculate  Decimal No. of a given Number
//Treating them as i)Normal binary nos(ii)Twos complemented iii)BCD:
function[c]=twos1(a1)
  [j1,i1]=size(a1)
  i4=1
  c=-(a1(i4)*2^(i1-1));
  i1=i1-1;
  while(i1>=1)
    i4=i4+1;
    c=c+a1(i4)*2^(i1-1);
    i1=i1-1;
  end
  disp(a1,"Decimal form of the Twos Complement Number");
  disp(c," is");
endfunction
function[d]=binary_dec(a2)
  [j2,i2]=size(a2);
  k=modulo(i2,4);
  d=0;
  if(k==0)
    e=i2/4;
    i3=1
    while(i3<=i2)
      l=3
      m=0
      while(l>=0)
        m=m+(a2(i3)*2^l);
        l=l-1;
        i3=i3+1;
      end
      if(m>9)
        d=-1;
        disp("Cannot be coded in this form")
       break;
      end
      if(m<=9)
        d=d+m*10^(e-1)
        e=e-1;
      end
    end
  end
  disp(a2,"Decimal form of  BCD number");
  disp(d,"is");
endfunction
//Given Example:
//(A)
p1=[1 0 0 1 1 0 0 1];
p2=base2dec(['10011001'],2)
p2=twos1(p1)
p2=binary_dec(p1)
//(b)
p3=[1 0 0 1];
p4=base2dec(['1001'],2)
p4=twos1(p3)
p4=binary_dec(p3)
//(C)
p5=[0 0 0 1 0 0 0 1 0 0 0 1];
p6=base2dec(['000100010001'],2)
p6=twos1(p5)
p6=binary_dec(p5)
//(d)
p7=[0 1 1 1 0 1 1 1];
p8=base2dec(['01110111'],2)
p8=twos1(p7)
p8=binary_dec(p7)
//(e)
p9=[0 1 0 1 0 1 0 1];
p10=base2dec(['01010101'],2)
p10=twos1(p9)
p10=binary_dec(p9)
//(F)
p11=[1 0 0 0 0 0 0 1 0 1 0 1];
p12=base2dec(['100000010101'],2)
p12=twos1(p11)
p12=binary_dec(p11)
    