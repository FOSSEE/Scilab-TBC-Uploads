     //EXAMPLE 2-3  PG NO-59-60
Vm=1;
AV1=0.318*Vm;                //avegare value
RMS1=0.5*Vm;                  //RMS value
FF1=RMS1/AV1;                     //Form Factor
PF1=Vm/RMS1;                       //Peak Factor
AV2=0.637*Vm;                  //Average    value
RMS2=0.707*Vm;                  //RMS  value
FF2=RMS2/AV2;                    //Form Factor
PF2=Vm/RMS2;                      //Peak Factor
disp('i)Form Factor   =  '+string (FF1)+' ')
disp('i)peak Factor   =  '+string (PF1)+' ')
disp('i)Form Factor   =  '+string (FF2)+' ')
disp('i)PEAK Factor   =  '+string (PF2)+' ')
