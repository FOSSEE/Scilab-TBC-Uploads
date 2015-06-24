//example 11.5
clc;
clear;
disp('Original table :'); //displaying original table 
disp('Present State   Next State   Present Output');
disp('                X=0    X=1    ');
disp('       a         a      b           0    ');
disp('      √b         c      d           0    ');
disp('       c         d      e           1    ');
disp('      √d         c      b           0    ');
disp('       e         b      c           1    ');
disp('For states b and d except for next state X=1 rest are same. NOw b and d would have been equivalent if these next states are equivalent. For b next state is d and d, next state is b. Thus bd are equivalent if next states db are equivalent which can always be true. Thus b and d are equivlent and state b is retained.')
disp('Table after first row elimination :'); //after first row elimination
disp('Present State   Next State   Present Output');
disp('                X=0    X=1    ');
disp('       a         a      b           0    ');
disp('       b         c      b           0    ');
disp('      √c         b      e           1    ');
disp('      √e         b      c           1    ');
disp('Now repeating the same above step for  c and e. Retaining c and replacing arll c''s with e we get the below table ');
disp('Table after second row elimination :');//after second row elimination
disp('Present State   Next State   Present Output');
disp('                X=0    X=1    ');
disp('       a         a      b           0    ');
disp('       b         c      b           0    ');
disp('       c         b      c           1    ');

disp('Implication table method'); // by implication method
printf('d:d\nc:d(ce)\nb:d(Ce)(bd)\na:(ce)(bd)a\nP=(ce)(bd)(a)');
