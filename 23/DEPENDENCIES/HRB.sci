function[H]=HRB(Tr,Pr,omega)
  B0=0.083-(0.422/(Tr^1.6));
  diffr_B0=0.675/(Tr^2.6);//dB0/dTr
  B1=0.139-(0.172/(Tr^4.2));
  diffr_B1=0.722/(Tr^5.2);//dB0/dTr
  H=Pr*(B0-(Tr*diffr_B0)+(omega*(B1-(Tr*diffr_B1))));
  funcprot(0);
endfunction