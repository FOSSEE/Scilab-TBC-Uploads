function[si]=PHIB(Tr,Pr,omega)
  B0=0.083-(0.422/(Tr^1.6));
  B1=0.139-(0.172/(Tr^4.2));
  si=exp((Pr/Tr)*(B0+(omega*B1)));
  funcprot(0);
  
endfunction