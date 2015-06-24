                //EXAMPLE-2-1              EXAMPLE-59
t=0.5; 
x=115; 
z=310.6                  //time
A.V=0.2*x;  //average value
R.M.S=(1/10)*z;                         //rms value
F=R.M.S/A.V;                          //form factor
P.F=60/R.M.S;                     //peak  factor
S=60/(2)^0.5;                      //rms value of  sine wave
disp('i)R.M.S   =  '+string (R.M.S)+' V')
disp('i) average value   =  '+string (A.V)+' V')
disp('i)orm factor   =  '+string (F)+' ')
disp('i peak factor   =  '+string (P.F)+' ')
disp('i)sine wave   =  '+string (S)+' V')


