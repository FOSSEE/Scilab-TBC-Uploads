clear;
clc;
// n =l/k
n1 = 40;
n2 = 60;
n3 = 80;
n4 = 100;
n5 = 120;
n6 = 140;
n7 = 160;
n8 = 180;
n9 = 200;
E = 13000;// tons/in^2
//m = P/A
m1 = 4*%pi^2 *E/n1^2;// tons per sq. inch
m2 = 4*%pi^2 *E/n2^2;// tons per sq. inch
m3 = 4*%pi^2 *E/n3^2;// tons per sq. inch
m4 = 4*%pi^2 *E/n4^2;// tons per sq. inch
m5 = 4*%pi^2 *E/n5^2;// tons per sq. inch
m6 = 4*%pi^2 *E/n6^2;// tons per sq. inch
m7 = 4*%pi^2 *E/n7^2;// tons per sq. inch
m8 = 4*%pi^2 *E/n8^2;// tons per sq. inch
m9 = 4*%pi^2 *E/n9^2;// tons per sq. inch
printf('l/k : %d    %d    %d    %d    %d    %d    %d    %d    %d\n P/A: %d   %.1f  %.1f  %.2f  %.2f  %.1f  %.2f  %.2f  %.2f',n1,n2,n3,n4,n5,n6,n7,n8,n9,m1,m2,m3,m4,m5,m6,m7,m8,m9);

//there is a minute error in the answer given in text book
