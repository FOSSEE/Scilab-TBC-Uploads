      //EXAMPLE -3.35      PG NO-195
I.P=163.44;     //POWER INPUT
T.A.P=253.44;   //TOTAL ACTIVE POWER
R.P=122.58;   //REACTIVE POWER  INDUCTION  MOTOR
L=40;     //REACTIVE POWER OF SPECIAL LOAD
T.P=R.P+L;   //TOTAL REACTIVE POWER
S=301.1;   //P+JQ
X=T.A.P/S;    //OVERALL POWRER  FACTOR
IL=S*10^3/(1.732*400)
disp('i)TOTAL REACTIVE POWER    =  '+string (T.P)+' Kvar')
disp('i) S   =  '+string (S)+' KVA')
disp('i)OVERALL POWER FACTOR (x)   =  '+string (X)+' lagging')
disp('iiii)LOAD CURRENT (IL)   =  '+string (IL)+' A')
      
