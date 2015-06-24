disp('In a college,120 mathematics students can opt for either French(F),German(G) or Russian(R)')
n=120;  //total number of students
F=65;  //number of students studying French
G=45;  //number of students studying German
R=42;  //number of students studying Russian
FandG=20;  //number of students studying French and German
FandR=25;  //number of students studying French and Russian
GandR=15;  //number of students studying German and Russian
FandGandR=8;  //number of students studying French,German and Russian
disp('using inclusion-exclusion principle:')
ForGorR=F+G+R-FandG-FandR-GandR+FandGandR; 
disp(ForGorR,'number of students studying French or German or Russian')
FGnR=FandG-FandGandR;  
disp(FGnR,'number of students studying French and German but not Russian')
FRnG=FandR-FandGandR ;
disp(FRnG,'number of students studying French and Russian but not German')
GRnF=GandR-FandGandR ; 
disp(GRnF,'number of students studying German and Russian but not French')
OF=F-FGnR-FandGandR-FRnG ; 
disp(OF,'number of students studying  Only French')
OG=G-FGnR-FandGandR-GRnF;  
disp(OG,'number of students studying  Only German')
OR=R-FRnG-FandGandR-GRnF;  
disp(OR,'number of students studying  Only Russian')
k=n-ForGorR; 
disp(k,'number of students not studying any of the languages')