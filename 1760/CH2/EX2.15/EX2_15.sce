Eav=50;                    //in volts
T=2;                     //time
E=[(1/T)*2500*2.66]^0.5;                //energy           //integrate('0','t',2)=2.66                                           
disp('i) Energy  = '+string (E)+'V ');
FF=E/Eav;                                   //form factor
disp('i) Form Factor  = '+string (FF)+' ');
