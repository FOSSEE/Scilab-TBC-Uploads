clc;
clear;
m1=0.2;
m2=0.3;
m3=0.2;
m4=0.15;
m5=0.15; // probability of 5 source messages 

H=m1*log2(1/m1)+m2*log2(1/m2)+m3*log2(1/m3)+m4*log2(1/m4)+m5*log2(1/m5);//Average information in bits

//a) Shannon-fano coding
                     //coding
// m1  0.2  0 0         00
// m2  0.3  0 1         01
// m3  0.2  1 0         10
// m4  0.15 1 1 0       110
// m5  0.15 1 1 1       111

L=(0.2*2)+(.3*2)+(0.2*2)+(2*0.15*3) //Average code word length(in bits)=probability *coding length

n=H/L; 

disp(n*100,"Coding efficiency for Shannon Fano coding is");

//b)  Huffman coding

// m1 0.2     01
// m2 0.3     00 
// m3 0.2     11
// m4 0.15    010
// m5 0.15    110

L=(0.2*2)+(.3*2)+(0.2*2)+(2*0.15*3) //Average code word length(in bits)=probability *coding length

n=H/L;

disp(n*100,"Coding efficiency for Huffman coding is");

//change in answer due to rounded off value in text-book
