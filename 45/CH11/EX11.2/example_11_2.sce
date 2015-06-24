// example 11.2 
//this code needs 
//donkmapij.sci // function to minimize given expression using a kmap 
//noof1.sci 
//above two shoulb be executed before executing this code
clc;
tt=[0 0 0 0 0 0 0 0 0 0;  // given state synthesis table 
    0 0 0 1 0 0 0 0 0 0;
    0 0 1 0 0 1 0 0 0 1;
    0 0 1 1 1 0 0 0 1 0;
    0 1 0 0 0 1 0 0 0 1;
    0 1 0 1 0 1 0 0 0 1;
    0 1 1 0 1 0 0 0 1 0;
    0 1 1 1 0 0 1 0 0 0;
    1 0 0 0 1 0 0 0 1 0;
    1 0 0 1 1 0 0 0 1 0;
    1 0 1 0 0 0 1 0 0 0;
    1 0 1 1 0 0 1 1 0 0];
disp('State snthesis table for Vending machine problem'); //printing the staate synthesis table 
disp('Present state   input     Next state    Output     Db    Da');
disp('   Bn    An    I     J    Bn1   An1    X     Y');
disp(tt);
printf('\n\n Design equations :\n');

printf('\n Design equation for DB\n');
db =[ 0 0 2 1 ; 0 0 2 1 ;1 0 2 0 ;0 1 2 0];
DB =donkmapij(db);// minimizing the expresion using 4 variable kmap
printf('\n     DB = %s \n\n',DB);//displaing result 

printf('\n Design equation for DA\n');
da =[ 0 1 2 0;0 1 2 0 ;0 0 2 0;1 0 2 0];
DA =donkmapij(da);// minimizing the expresion using 4 variable kmap
printf('\n     DA = %s \n\n',DA);//displaing result

printf('\n Design equation for X\n');
x =[0 0 2 0;0 0 2 0;0 1 2 1; 0 0 2 1];
X =donkmapij(x);// minimizing the expresion using 4 variable kmap
printf('\n     X = %s \n\n',X);//displaing result

printf('\n Design equation for Y\n');
y=[0 0 2 0;0 0 2 0;0 0 2 1;0 0 2 0];
Y =donkmapij(y);// minimizing the expresion using 4 variable kmap
printf('\n     Y = %s \n\n',Y);//displaing result
