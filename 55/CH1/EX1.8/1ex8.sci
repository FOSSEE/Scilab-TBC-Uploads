disp('To find:number of mathematics students taking atleast one of the languages French(F),German(G) and Russian(R)')
F=65; //number of students studying French
G=45;  // number of students studying German
R=42;  //number of students studying Russian
FandG=20;  //number of students studying French and German
FandR=25;  //number of students studying French and Russian
GandR=15;   //number of students studying German and Russian
FandGandR=8; //number of students studying French,German and Russian
 //By inclusion-exclusion principle
 ForGorR=F+G+R-FandG-FandR-GandR+FandGandR;
disp(ForGorR,'the number of students studying atleast one of the languages :')